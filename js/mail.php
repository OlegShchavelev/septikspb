<?php
// Общие переменные
$sitename = "septikspb.com";
$secret_foldername = '/'.md5($sitename).'/'.date("Y-m");

// Загрузка фйлов на сервер 
if(isset($_GET['files'])){
    $data = array();
    $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    $randomString = '';
    for ($i = 0; $i < 5; $i++) {
        $randomString .= $characters[rand(0, strlen($characters) - 1)];
    }
    $error = false;
    $files = array();
    $dateForFile = date('Y-m-d-H-i-s');
    $uploaddir = $_SERVER['DOCUMENT_ROOT'].$secret_foldername;
     
    if (!file_exists($uploaddir)) {
        if(!mkdir($uploaddir, 0755, true)){
            $error = "Ошибка создания папки \"".$uploaddir."\". Код - dir01";
             
        }
    }
    if(!$error){
        foreach($_FILES as $file){
            $path_info = pathinfo($file['name']);
            $onlyfilename = $dateForFile."-".$randomString."-".basename($file['tmp_name'].".".$path_info['extension']);
            $newfilename = $uploaddir.$onlyfilename;
             
            if(move_uploaded_file($file['tmp_name'], $newfilename)){
                $files[] = $uploaddir .$file['name'];
            }
            else{
                switch($file['error']){
                    case 0: $error = "Произошла ошибка. Код - 0"; break;
                    case 1: $error = "Ошибка. Превышен лимит размера файла. Код - 1"; break;
                    case 2: $error = "Ошибка. Превышен лимит размера файла. Код - 2"; break;
                    case 3: $error = "Произошла ошибка при загрузке файла. Код - 3"; break;
                    case 4: $error = "Произошла ошибка при загрузке файла. Код - 4"; break;
                    case 5: $error = "Произошла ошибка при загрузке файла. Код - 5"; break;
                    case 6: $error = "Произошла ошибка при загрузке файла. Код - 6"; break;
                    case 7: $error = "Произошла ошибка при загрузке файла. Код - 7"; break;
                    case 8: $error = "Произошла ошибка при загрузке файла. Код - 8"; break;
                }
            }
        }
    }
    $data = ($error) ? array('error' => $error) : array('files' => $files,'onlyfilename' => $onlyfilename, 'extension' => $path_info['extension']);
    echo json_encode($data);
    exit();
}

// Обработчик запроса AJAX при отправке формы
if($_SERVER['REQUEST_METHOD'] == 'POST' AND !empty($_POST['fbfdata'])){
    $result = array("result"=>"<h1>Благодарим за внимание к нашей компании!</h1><p>В ближайшее время с вами свяжется наш менеджер</p><a href='javascript:jQuery.fancybox.close()' class='backtosite'>Вернуться к сайту</a>");
    $key = json_decode($_POST['fbfdata'], true);
    //print_r($_SERVER);die;
    if($key){
        $message = "<h1>".strip_tags($key['header'])."</h1>\r\n";
        $message .= "<table><tbody>";
        foreach($key['fields'] as $v){
            if(empty($v['value'])){
                continue;
            }
			if(stristr($v['title'], 'File')){
				$message .= "<tr><td><strong>".strip_tags($v['title']).": <strong></td><td><a href='".$_SERVER['HTTP_ORIGIN'].$secret_foldername.strip_tags($v['value'])."' target='_blank'>Открыть файл</a></td></tr>\r\n";
			}else{
			    if(!empty($v['linktitle'])){
				    $message .= "<tr><td><strong>".strip_tags($v['title']).":<strong> </td><td><a href='".strip_tags($v['value'])."' target='_blank'>".$v['linktitle']."</a></td></tr>\r\n";
			    }else{
				    $message .= "<tr><td><strong>".strip_tags($v['title']).":<strong> </td><td>".strip_tags($v['value'])."</td></tr>\r\n";
			    }
			}
        }
        $message .= "</tbody></table>";
    }else{ //Заглушка при косячном хостинге
        $message = "<h1>".strip_tags($key['header'])."</h1>\r\n";
        $message .= "<p>На сервере не работает json_decode. Возможно проблема связана с настройкой PHP: MagicQuotes. Необходимо обратиться в техподдержку хостинга.<br>А пока данные в сыром виде:</p>\r\n";
        $message .= $_POST['fbfdata'];
    }
    
    if(false){
        // Создать ресурс при получении заявки.
        
        // Подключаем
        define('MODX_API_MODE', true);
        require $_SERVER['DOCUMENT_ROOT'].'/index.php';
         
        // Включаем обработку ошибок
        $modx->getService('error','error.modError');
        $modx->setLogLevel(modX::LOG_LEVEL_INFO);
        $modx->setLogTarget(XPDO_CLI_MODE ? 'ECHO' : 'HTML');
        
        //foreach($key['fields'] as $v){
        //    $$v['name'] = strip_tags($v['value']);
        //}
        
        $document = $modx->newObject('modResource');
        $document->set('createdby', '1');
        $document->set('template', '5');
        $document->set('isfolder', '0');
        $document->set('published', '1');
        $document->set('createdon', time());
        $document->set('publishedon', time());
        $document->set('pagetitle', $key['header']);
        $document->set('alias', md5($message.rand(1,99999999)));
        $document->setContent($message);
        $document->set('parent', '18');
        $document->save();
    }
    
    $to      = 'info@septikspb.com, supernacho89@mail.ru';
    //$to      = 'serg_x@bk.ru';
    $subject = 'Заявка с сайта '.$sitename;
    $subject = '=?utf-8?b?'. base64_encode($subject) .'?=';
    $headers  = "MIME-Version: 1.0" . "\r\n";
    $headers .= "Content-type: text/html; charset=utf-8" . "\r\n";
    $headers .= "From: Wincub informer <info@".$sitename.">". "\r\n";
    
    if (!mail($to, $subject, $message, $headers)){
        $result['result'] = "Ошибка..";
    }
    echo json_encode($result);
    exit();
}else{
//Генерация формы:
// ПРИМЕР ВЫЗОВА:
// <a href="js/mail.php?formtitle=Заказать%20звонок&formsubmit=Жду%20звонка!&mailtitle=Заказать%20звонок&feilds=css__subtitle__name__phone__email__comment__selflink" data-fancybox-type="ajax" class="fancybox">Заказать звонок</a>
// <a href="js/mail.php" data-fancybox-type="ajax" class="fancybox">Заказать звонок</a>
// <script>$('.fancybox').fancybox();</script>
 
    // можно отдавать разные варианты формы if($_GET['fbtype'] == 1){}
    //Настройки формы:

     
    if(!empty($_GET['formtitle'])){
        $formtitle = strip_tags($_GET['formtitle']);
    }else{
        $formtitle = "Заказать звонок";
    }
    if(!empty($_GET['formsubmit'])){
        $formsubmit = strip_tags($_GET['formsubmit']);
    }else{
        $formsubmit = "Жду звонка!";
    }
    if(!empty($_GET['mailtitle'])){
        $mailtitle = strip_tags($_GET['mailtitle']);
    }else{
        $mailtitle = "Обратный звонок";
    }
    if(!empty($_GET['postfix_class'])){
        $postfix_class = strip_tags($_GET['postfix_class']);
    }else{
        $postfix_class = preg_replace('/[^a-zA-Z]/ui', '', md5($_SERVER['HTTP_HOST']));
    }
    if(!empty($_GET['feilds'])){
        $feilds = array_flip(explode("__",strip_tags($_GET['feilds'])));
    }else{
        $feilds = array_flip(explode("__","css__subtitle__name__phone__email__comment"));
    }
    
?>
<?php
if(isset($feilds['css'])){
?>
<style>

.feedBackWrapper.<?php echo $postfix_class; ?> {
border: 0;
margin: 0;
/*padding:0 25px;*/
max-width: 813px;
}
.feedBackWrapper.<?php echo $postfix_class; ?> table {
    width:100% !important;
	display: table !important;
}
.feedBackWrapper.<?php echo $postfix_class; ?> td {
padding: 0;
vertical-align: middle;
}
.feedBackWrapper.<?php echo $postfix_class; ?> .fbw-title {
white-space: nowrap;
padding-right: 10px;
width:110px;
}
.feedBackWrapper.<?php echo $postfix_class; ?> .form-h3 {	
	margin-top: 75px;
	margin-left: 75px;
	margin-right: 75px;
	color: #3881ad;
	font-size: 26px;
	margin-bottom: 35px;
	padding-top: 10px;
	padding-bottom: 10px;
	padding-left: 75px;
	background: url(../img/formphone.png) no-repeat left center;
	text-transform: uppercase;
	text-align: left;
}
.feedBackWrapper.<?php echo $postfix_class; ?> p{
 	margin-left: 75px;
	margin-bottom: 75px;
	margin-right: 75px;
	font-size: 15px;
	color: #212121;
	text-align: left;
}
.feedBackWrapper.<?php echo $postfix_class; ?> .ajaxgo{
	padding: 0 !important;
height: 60px;
	line-height: 60px;
	font-size: 14px;
	text-transform: uppercase;
	background: #7bae57;
	border-radius: 2px;
	cursor: pointer;
	font-weight: 600;
	outline: none;
	border: 0;
	display: block;
	width: 295px;
	margin: 0 auto;
}
.feedBackWrapper.<?php echo $postfix_class; ?> .ajaxgo:focus {
outline:1px dashed #ccc;
}
.feedBackWrapper.<?php echo $postfix_class; ?> .ajaxgo:hover {
background: #79AE4E;
}
.feedBackWrapper.<?php echo $postfix_class; ?> .ajaxgo:active {
outline:none;
}
.feedBackWrapper.<?php echo $postfix_class; ?> .ajaxgo-wr{
height: 38px;
padding-top:25px;
text-align:center;
margin-bottom: 25px;
position: relative;
	border-radius: 2px;
}
.feedBackWrapper.<?php echo $postfix_class; ?> .fbw-text{
box-sizing: border-box;
	padding: 0;
padding-left: 50px;
border: 2px solid #76accc;
outline: none;
-webkit-box-shadow: inset 0 1px 2px rgba(0,0,0,0.1);
-moz-box-shadow: inset 0 1px 2px rgba(0,0,0,0.1);
box-shadow: inset 0 1px 2px rgba(0,0,0,0.1);
width:295px;
font-family:inherit;
	background: #317097;
	color: #b5cfde;
	border-radius: 2px;
	height: 45px;
	line-height: 45px;
	font-size: 14px;
	margin: 0 auto;
	margin-bottom: 15px;
}
.feedBackWrapper.<?php echo $postfix_class; ?> .fbw-text::-webkit-input-placeholder { /* WebKit, Blink, Edge */
    color:    #b5cfde;
}
.feedBackWrapper.<?php echo $postfix_class; ?> .fbw-text:-moz-placeholder { /* Mozilla Firefox 4 to 18 */
   color:    #b5cfde;
   opacity:  1;
}
.feedBackWrapper.<?php echo $postfix_class; ?> .fbw-text::-moz-placeholder { /* Mozilla Firefox 19+ */
   color:    #b5cfde;
   opacity:  1;
}
.feedBackWrapper.<?php echo $postfix_class; ?> .fbw-text:-ms-input-placeholder { /* Internet Explorer 10-11 */
   color:    #b5cfde;
}
.feedBackWrapper.<?php echo $postfix_class; ?> .fbw-text::-ms-input-placeholder { /* Microsoft Edge */
   color:    #b5cfde;
}

.feedBackWrapper.<?php echo $postfix_class; ?> .fbw-text::placeholder { /* Most modern browsers support this now. */
   color:    #b5cfde;
}
.feedBackWrapper.<?php echo $postfix_class; ?> .fbw-text:focus {
border-color: #66afe9 !important;
outline: 0;
-webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,1);
-moz-box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,1);
box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,1);
}
	.feedBackWrapper.<?php echo $postfix_class; ?> .fbw-text.f1{
		margin-top: 45px;
		background: #317097 url(../img/formname.png) no-repeat 20px center;
	}
	.feedBackWrapper.<?php echo $postfix_class; ?> .fbw-text.f2{
		
		background: #317097 url(../img/formphone2.png) no-repeat 20px center;
	}
.feedBackWrapper.<?php echo $postfix_class; ?> .ajax-trigger {
text-align: center;
margin-top: 37px;
margin-bottom: 37px;
}
.feedBackWrapper.<?php echo $postfix_class; ?> .ajax-trigger .successmsg{
	color: #b5cfde;
	padding-bottom: 15px;
	padding-top: 15px;
	text-transform: uppercase;
	font-size: 20px;		
}
.feedBackWrapper.<?php echo $postfix_class; ?> .fbw_law_wr{
    text-align: left;
    padding:0;
	margin: 0 auto;
	margin-top: 10px;
	width: 295px;
	display: block;
	color:    #b5cfde;
	font-size: 14px;
}
.feedBackWrapper.<?php echo $postfix_class; ?> .fbw_law_wr a{
	color:    #b5cfde;
	font-size: 14px;	
}
.feedBackWrapper.<?php echo $postfix_class; ?> .fbw_law_wr input{
    padding: 0;
    margin: 0;
    margin-right: 5px;
	display: none;
}
/*.feedBackWrapper.<?php echo $postfix_class; ?> .fbw_law_wr label{
	background: url(../img/formcb.png) no-repeat left 3px;
	padding-left: 35px;
	cursor: pointer;
}
	
	.feedBackWrapper.<?php echo $postfix_class; ?> .fbw_law_wr input:checked + .feedBackWrapper.<?php echo $postfix_class; ?> .fbw_law_wr label{
		background-position: left -40px;
		font-weight: bold;
	}*/
	
/*.feedBackWrapper.<?php echo $postfix_class; ?> .fbw_law_wr input[type=checkbox] + .feedBackWrapper.<?php echo $postfix_class; ?> .fbw_law_wr label {
  color: #000;
  font-style: italic;
} 
.feedBackWrapper.<?php echo $postfix_class; ?> .fbw_law_wr input[type=checkbox]:checked + .feedBackWrapper.<?php echo $postfix_class; ?> .fbw_law_wr label {
  color: #f00;
  font-style: normal;
} */
	
input[type=checkbox] + label {
  background: url(../img/formcb.png) no-repeat left 3px;
	padding-left: 35px;
	cursor: pointer;
	font-size: 14px;
} 
input[type=checkbox]:checked + label {
  background-position: left -275px;
} 
	
.feedBackWrapper.<?php echo $postfix_class; ?> .fbw_law_wr.haserror label,
.feedBackWrapper.<?php echo $postfix_class; ?> .fbw_law_wr.haserror label a{
    color: #eca6bb;
}
.feedBackWrapper.<?php echo $postfix_class; ?> .bl{
    background-color: #3881ad;
	border-bottom-right-radius: 4px;
	border-top-right-radius: 4px;
}
	.feedBackWrapper.<?php echo $postfix_class; ?> .haserror{
		border-color: #eca6bb !important;
	}
	.feedBackWrapper.<?php echo $postfix_class; ?> .fbf_error_wr{
		display: none;
	}
.fancybox-close{
	background-image: url(../img/formclose.png);
	width: 34px;
	height: 28px;
	top: -28px;
	right: 15px;
}
	.successmsg{
		width: 100%;
		display: none;
	}
	.successmsg:before{
		content: "";
		position: absolute;
		width: 119px;
		height: 119px;
		left: 50%;
		margin-left: -60px;
		top: -60px;
		background: url(../img/formsmile.png);
	}
	.successmsg h1{
		max-width: 360px;
		font-size: 24px;
		color: #3881ad;
		padding-top: 85px;
		padding-bottom: 30px;
		display: block;
		margin: 0 auto;
		text-align: center;
		padding-left: 15px;
		padding-right: 15px;
	}
	.feedBackWrapper.<?php echo $postfix_class; ?> .successmsg p{
		max-width: 220px;
		font-size: 15px;
		color: #212121;
		margin: 0 auto;
		margin-bottom: 30px;
		display: block;
		text-align: center;
	}
.successmsg .backtosite{
		padding: 0 !important;
	height: 60px;
	line-height: 60px;
	font-size: 14px;
	text-transform: uppercase;
	background: #7bae57;
	border-radius: 2px;
	cursor: pointer;
	font-weight: 600;
	outline: none;
	border: 0;
	display: block;
	max-width: 295px;
	margin: 0 auto;	
	margin-bottom: 50px;
	color: #fff;
	text-align: center;
	text-decoration: none;
}
@media only screen and  (max-width: 768px) {
	.feedBackWrapper.<?php echo $postfix_class; ?> .form-h3{
		
		
		background-size: contain;
		text-align: left;
		font-size: 19px;
		padding-left: 45px;
		max-width: 230px;
		margin: 0 auto;
		margin-top: 35px;
		margin-bottom: 15px;
	}
	.feedBackWrapper.<?php echo $postfix_class; ?> p{				
		max-width: 230px;
		margin: 0 auto;
		margin-bottom: 25px;
		text-align: center;
		display: block;
		font-size: 13px;
	}
	.feedBackWrapper.<?php echo $postfix_class; ?> .fbw-text,
	.feedBackWrapper.<?php echo $postfix_class; ?> .ajaxgo,
	.feedBackWrapper.<?php echo $postfix_class; ?> .fbw_law_wr{
		width: 230px;		
	}
	.feedBackWrapper.bffbfccbb .bl {		
		border-bottom-right-radius: 4px;
		border-bottom-left-radius: 4px;
	}
	.feedBackWrapper.<?php echo $postfix_class; ?> .ajax-trigger .successmsg{
		padding-top: 7px;
		padding-bottom: 7px;
	}
}
</style>
<?php } ?>
    <div class="feedBackWrapper <?php echo $postfix_class; ?>">
      
       
<div class="col-md-6 col-sm-6 col-xs-12 wh" style="padding: 0;">
        <h3 class="form-h3"><?php echo $formtitle; ?></h3>
<?php
if(isset($feilds['subtitle'])){
?>
        <p >По всем интересующим вопросам отправьте нам сообщение и мы свяжемся с Вами</p>
<?php } ?>
</div>
<div class="col-md-6 col-sm-6 col-xs-12 bl" style="padding: 0;">
        <table>
            <tbody>
<?php
if(isset($feilds['name'])){
?>
                <tr>                    
                    <td><input type="text" placeholder="Ваше имя" class="isrequired fbw-text form-control f1"></td>
                </tr>
<?php }
if(isset($feilds['phone'])){
?>
                <tr>                    
                    <td><input type="text" placeholder="Номер телефона" class="isrequired fbw-text form-control f2"></td>
                </tr>
<?php }
if(isset($feilds['email'])){
?>
                <tr>                    
                    <td><input type="text" placeholder="E-mail" class="fbw-text form-control f3"></td>
                </tr>
<?php }
if(isset($feilds['addr'])){
?>
                <tr>                    
                    <td><input type="text" placeholder="Адрес участка" class="fbw-text form-control f4"></td>
                </tr>
<?php }
if(isset($feilds['checkbox1'])){
?>
    			<tr>    				
    				<td>
    				    <label><input type="checkbox" name='checkbox1' data-validatefunction="radio" data-title="Цвет" value="Синий" class="isrequired">Синий</label>
    				    <label><input type="checkbox" name='checkbox1' data-validatefunction="radio" data-title="Цвет" value="Зеленый" class="isrequired">Зеленый</label>
    				    <label><input type="checkbox" name='checkbox1' data-validatefunction="radio" data-title="Цвет" value="Красный" class="isrequired">Красный</label>
    				</td>
    			</tr>

<?php }
if(isset($feilds['radio1'])){
?>
			<tr>				
				<td>
				    <label><input type="radio" name='radio1' data-validatefunction="radio" data-title="Вкус" value="Сладкий">Сладкий</label>
				    <label><input type="radio" name='radio1' data-validatefunction="radio" data-title="Вкус" value="Соленый">Соленый</label>
				    <label><input type="radio" name='radio1' data-validatefunction="radio" data-title="Вкус" value="Горький">Горький</label>
				</td>
			</tr>
<?php }
if(isset($feilds['comment'])){
?>
                <tr>                    
                    <td><textarea placeholder="Комментарий" class="fbw-text form-control"></textarea></td>
                </tr>
<?php } ?>
    			<tr>
    				<td colspan="2" class="fbw_law_wr">
   				    	<input id="checkbox1" type="checkbox" name='checkbox1' data-validatefunction="checkbox" data-title="Согласие" value="Ок" class="isrequired">
    				    <label for="checkbox1">Ознакомлен с <a href="https://www.septikspb.com/politiki-konfidenczialnosti.html" target="_blank">правилами обработки персональных данных</a></label>
    				</td>
    			</tr>
            </tbody>
        </table>
        <div class="ajax-trigger">
            <button class="ajaxgo btn btn_msgo_action <?php echo $postfix_class; ?>"><i class="fa fa-paper-plane"></i> <?php echo $formsubmit; ?></button>
            
        </div>
</div> 
<div class="successmsg"></div>       
    </div>
    <script type="text/javascript">
    /*
$(document).ready(function(){
$(document.body).on("click", ".ajaxgo.<?php echo $postfix_class; ?>", FBFsend<?php echo $postfix_class; ?>);
$(document.body).on("focus", "input, textarea", function(){$(this).removeClass("haserror");});
function FBFsend<?php echo $postfix_class; ?>(){
	var wr = $(this).parents(".feedBackWrapper");
	var validate = true;
	wr.find(".isrequired").each(function(){
		if(!$(this).val().length){validate = false; $(this).addClass("haserror");}
	});
	if (validate){
		var need = {};
		need['header'] = "<?php echo $mailtitle; ?>";
        need['fields'] = [];
		wr.find("input, select, textarea").each(function(){
		    var t = $(this);
		    var fieldElement = {};
		    
		    if(t.attr("data-title")){
		        fieldElement['title'] = t.data("title");
		    }else{
		        fieldElement['title'] = t.attr("placeholder");
		    }
		    if(t.attr("data-linktitle")){
		        fieldElement['linktitle'] = t.data("linktitle");
		    }
		    if(t.attr('type') == 'checkbox' || t.attr('type') == 'radio'){
		        if(t.prop('checked') !== true){
                    return true;
		        }
		    }
		    fieldElement['value'] = t.val();
		    need['fields'][need['fields'].length] = fieldElement;
		});
<?php
if(isset($feilds['selflink'])){
?>
            need['fields'][need['fields'].length] = {type:"text", title: "Страница", linktitle: $("h1").first().text() , value: window.location.href};
<?php } ?>
		output = JSON.stringify(need);
		$.ajax({
			type: "POST",
			data: {fbfdata: output},
			url:'<?php echo $_SERVER['PHP_SELF']; ?>',
			dataType:'json',
			success: function(data){
				wr.find(".ajaxgo").hide();
				wr.find(".successmsg").html(data.result);
				wr.find(".successmsg").fadeIn(300).css("display","inline-block");
			},
			error: function (xhr, ajaxOptions, thrownError){
				console.log(xhr.responseText);
			}
		});
	}
}
});
*/
    </script>
<?php
 }
?>