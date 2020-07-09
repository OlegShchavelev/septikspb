$(document).ready(function(){$(".highslide").fancybox();$('.call_back_form_trigger').fancybox({type:'ajax',padding:0});$(".fancybox").fancybox({padding:0});$('#slider img').removeClass("none");$('#slider').bxSlider({pagerCustom:'#bx-pager',controls:false,auto:true});$('#slider_2').bxSlider({pager:false,controls:true});$('#slider_3').bxSlider({minSlides:3,maxSlides:3,slideWidth:"auto",slideMargin:10,pager:false,controls:true});$('#slider_4').bxSlider({mode:'vertical',pager:false,controls:false,auto:true});$('#slider_0').bxSlider({minSlides:"1",maxSlides:"3",slideWidth:"auto",slideMargin:"0",pager:false});$('.mobile_expandable .mobile_expander').click(function(){$(this).parent().find('.info').slideToggle();});$('.catalog-button').click(function(){$(".side_nav").slideToggle();});$('.solution_wr').owlCarousel({items:4,autoplay:false,loop:false,nav:true,dots:true,navText:["<",">"],responsive:{0:{items:1},480:{items:2},768:{items:3},990:{items:4}}});$('.lb5_wr .row').owlCarousel({items:4,autoplay:false,loop:false,nav:true,dots:true,navText:["<",">"],responsive:{0:{items:1},480:{items:2},768:{items:3},990:{items:4}}});$('.btn-menu').click(function(){$(this).toggleClass('open');$('.mobile-menu').toggleClass('open');});var body_height=$('body').height();$('.mobile-menu').height(body_height);});function Open(block){var nameBlock=document.getElementById(block);var styleBlock=getComputedStyle(nameBlock).display;nameBlock.style.display=styleBlock==='none'?'block':'none';}var inputRadioData={};var inputNumberData={};var outputData1={};var outputData1html="";var outputData2html="";var wr=$('#calk-form');$('input[type="number"]').on("change keyup input click",function(){if(this.value.match(/[^0-9]/g)){this.value=this.value.replace(/[^0-9]/g,'');}if(!this.value){this.value='';}});$('input[name="cheloveknumber"]').on("change keyup input click",function(){if(parseInt(this.value)>8){this.value=8;$(".calk_hidden_tip1").show();}if(parseInt(this.value)==0){this.value=1;}});$('#calk-form').find('.input-data').find('.td-input-wrapper').click(function(){$(this).children().css('border','');});$('#searchgo').click(function(){var validate=true;$('#calk-form').find('.input-data').find('input').each(function(){var t=$(this);switch(t.attr('type')){case'number':if(!t.val().length){t.parents('.td-input-wrapper').children().css('border','1px solid red');validate=false;}break;case'radio':if(t.parents('.td-input-wrapper').find('input:checked').length<1){t.parents('.td-input-wrapper').children().css('border','1px solid red');validate=false;}break;}});if(!validate){return false;}inputRadioData={};inputNumberData={};outputData1={};outputData1html="";outputData2html="";$('#calk-form').find('.input-data').find('input').each(function(){var t=$(this);switch(t.attr('type')){case'number':if(t.val()){inputNumberData[t.attr('name')]=parseInt(t.val());}break;case'radio':if(t.is(':checked')){inputRadioData[t.attr('name')]=t.val();}break;}});var isseptic=false;if(inputRadioData.glubina=='более 1,5м'&&inputRadioData.grunttype=='Песок'){isseptic=true;}$.each(septicData,function(i){var validate=0;if(inputNumberData.cheloveknumber<=septicData[i].condition.cheloveknumber&&Object.keys(outputData1).length<1){$.each(septicData[i].condition,function(k,val){if(typeof(septicData[i].condition[k])=="object"){for(var key in septicData[i].condition[k]){if(inputRadioData[k]==septicData[i].condition[k][key]){validate++;}}}else{if(inputRadioData[k]==septicData[i].condition[k]){validate++;}}if(Object.keys(inputRadioData).length==validate){outputData1[Object.keys(outputData1).length+1]=(septicData[i]);outputData1html+="<li><a data-id='"+i+"'>"+septicData[i].name+" <span>"+septicData[i].price+" р.</span></a></li>";}});}if(isseptic&&septicData[i].isseptic&&inputNumberData.cheloveknumber<=septicData[i].condition.cheloveknumber&&Object.keys(outputData1).length<2){$.each(septicData[i].condition,function(k,val){if(typeof(septicData[i].condition[k])=="object"){for(var key in septicData[i].condition[k]){if(inputRadioData[k]==septicData[i].condition[k][key]){validate++;}}}else{if(inputRadioData[k]==septicData[i].condition[k]){validate++;}}if(Object.keys(inputRadioData).length==validate){outputData1[Object.keys(outputData1).length+1]=(septicData[i]);outputData1html+="<li><a data-id='"+i+"'>"+septicData[i].name+" <span>"+septicData[i].price+" р.</span></a></li>";}});}});$(wr).find('.chosen-septic').hide();$(wr).find('.additional-septic').hide();$('.finalPrice').hide();$('.feedBackWrapper').hide();$(wr).find('.output-data-list').html(outputData1html);if(Object.keys(outputData1)==1){showProductInfo(outputData1[1].id);}});var showProductInfo=function(dataid){outputData2html="";var finalPrice=0;var tData=typeof dataid=='object'?septicData[$(this).data('id')]:septicData[dataid];finalPrice+=parseInt(tData.price);var customData={};customData.vodosbros='<br />Варианты сброса очищенной воды – в канаву, в дренаж, на рельеф';customData.addTitle='';customData.dopimg=false;if(inputRadioData.glubina=='до 1,5м'){customData.addTitle=' с насосом ';customData.dopimg="img/calc/calc-nasos1.png";}if(inputRadioData.glubina=='более 1,5м'&&inputRadioData.grunttype=='Песок'){if(!tData.isseptic){customData.addTitle=' с дренажным колодцем ';customData.vodosbros='<br />Cброс очищенной воды – в грунт через дренажный колодец';customData.dopimg="img/calc/calc-drenajniy-kolodec.jpg";}if(tData.isseptic){customData.addTitle=' с дренажным полем';customData.vodosbros='<br />Cброс очищенной воды – в грунт через дренажное поле площадью '+tData.size+' кв.м.';}}var appendAdditional=function(idx){outputData2html+="<li>"+additionalData[idx].name+" <span>"+additionalData[idx].price+" руб.</span></li>";finalPrice+=parseInt(additionalData[idx].price);}
var showHidePrice=function(){if(finalPrice>0){$('.finalPrice').show();}else{$('.finalPrice').html("0");$('.finalPrice').hide();}}
if(inputRadioData.glubina=='до 1,5м'){outputData2html+="<li>"+additionalData[0].name+" <span>"+additionalData[0].price+" руб.</span></li>";finalPrice+=additionalData[0].price;}outputData2html+="<li>"+additionalData[4].name+" ("+inputNumberData.dlinatrub+" м.) <span>"+parseInt(additionalData[4].price)*inputNumberData.dlinatrub+" руб.</span></li>";finalPrice+=parseInt(additionalData[4].price)*inputNumberData.dlinatrub;if(parseInt(inputNumberData.rasstoyanie)>50){outputData2html+="<li>"+additionalData[5].name+" ("+inputNumberData.rasstoyanie+" км.) <span>"+parseInt(additionalData[5].price)*(inputNumberData.rasstoyanie-50)+" руб.</span></li>";finalPrice+=parseInt(additionalData[5].price)*(inputNumberData.rasstoyanie-50);}else{outputData2html+="<li>"+additionalData[5].name+" ("+inputNumberData.rasstoyanie+" км.) <span style='font-weight:bold;'>Бесплатная доставка</span></li>";$(wr).find(".product_extraoffer_freedost").show();}if(inputRadioData.glubina=='более 1,5м'&&inputRadioData.grunttype=='Песок'){if(!tData.isseptic){outputData2html+="<li>"+additionalData[3].name+" <span>"+additionalData[3].price+" руб.</span></li>";finalPrice+=additionalData[3].price;}if(tData.isseptic){outputData2html+="<li>"+additionalData[7].name+" <span>"+additionalData[7].price*(tData.size/10)+" руб.</span></li>";finalPrice+=additionalData[7].price*(tData.size/10);}}if(tData.isseptic){if(tData.septicsize>2){appendAdditional(3);}else{appendAdditional(1);}}else{appendAdditional(1);}if(tData.id==0||tData.id==1||tData.id==2||tData.id==5||tData.id==6){appendAdditional(8);}else{appendAdditional(9);}showHidePrice();$(wr).find('.chosen-septic-element').html(tData.name+" "+customData.addTitle+" "+"<span>"+tData.price+" руб.</span>");$(wr).find('.chosen-septic-img-add').add('.calc-plus-img').hide();$(wr).find('.chosen-septic-img-add').attr("src","");if(customData.dopimg!=false){$(wr).find('.chosen-septic-img-add').attr("src",customData.dopimg);$(wr).find('.chosen-septic-img-add').add('.calc-plus-img').show();}$(wr).find('.chosen-septic-img-main').attr('src',tData.image);$(wr).find('.chosen-septic-element-info').html(function(){var output="Рассчитан на – "+tData.condition.cheloveknumber+" пользователей; <br>";if(tData.condition.havebath=="Нет"){output+="Не подходит для обеспечения работы ванны/купели; <br>";}else{output+="Подходит для обеспечения работы ванны/купели; <br>";}output+="Глубина залегания грунтовых вод – "+inputRadioData.glubina+"; <br>";if(tData.condition.grunttype[0]=="Песок"){output+="Тип грунта – песок; <br>";}else{output+="Тип грунта – глина/суглинок/торф;  <br>";}output+=customData.vodosbros;return output;});$(wr).find('.chosen-septic').show();$(wr).find('.additional-data-list').html(outputData2html);$(wr).find('.additional-septic').show();$(wr).find('.product_extraoffer').show();$('.feedBackWrapper').show();$(wr).find('.finalPrice').find("span").html(finalPrice);$("html,body").animate({scrollTop:$(".output-data-1").offset().top-50},"slow");}
$('#calk-form').on("click",".output-data-list a",showProductInfo);$(document.body).on("click",".ajaxgo.ajaxgo_old",send);$(document.body).on("focus","input",function(){$(this).css("border","");});function send(){var wr=$(this).parents(".feedBackWrapper");var validate=true;wr.find(".isrequired").each(function(){if(!$(this).val().length){validate=false;$(this).css("border","1px solid #D22")}});if(validate){var need="";need+=$('.chosen-septic').html();need+=$('.additional-septic').html();need+="<h3>Контактная информация:</h3>";wr.find("input").each(function(){need+="<br /><b>"+$(this).attr("title")+"</b>: "+$(this).val();});wr.find("select").each(function(){need+="<br /><b>"+$(this).attr("title")+"</b>: "+$(this).val();});wr.find("textarea").each(function(){need+="<br /><b>"+$(this).attr("title")+"</b>: "+$(this).val();});output=JSON.stringify(need);$.ajax({type:"POST",data:{data1:need},url:'mail.php',dataType:'html',success:function(data){wr.find(".ajaxgo").hide();wr.find(".successmsg").html("Спасибо, ваша заявка принята!");wr.find(".successmsg").fadeIn(300).css("display","inline-block");},error:function(xhr,ajaxOptions,thrownError){console.log(xhr.responseText);}});}}


$(document).ready(function() {

  setTimeout(function() {
    $('<li class="submenu_calc_button"><div class="side_nav_calc_link"><a href="/podbor-septika">Подобрать септик</a></div></li>')
    .appendTo('.new-header .header_nav_wr > ul > li:first-child > ul');
  },444);

  if ($(window).width() > 767) {
    setInterval(function() {
      if ($('.new-header .top_line_cart .ms2_total_count').html() == "0") {$('.new-header .top_line_cart .ms2_total_count').html('Корзина пуста');}
    },444);
  }


 if ($('.new-header_slider').length) {
 if ($(window).width() < 1024) {


   $('.new-header_slider .new_header_slider_wr ul').find('li:first-child').appendTo($('.new-header_slider .new_header_slider_wr ul'));

   var b_slider = $('.new-header_slider .new_header_slider_wr').find("ul").bxSlider({
  	  pagerCustom: '.header_slider_pager',
  	  controls:false,
  	  auto:true,
  	  minSlides:1,
  	  maxSlides:1,
  	  moveSlides:1,
  	  //slideWidth:1024,
  	  onSlideBefore:function() {
  	    $(".new-header_slider li").removeClass('current');
        var current = b_slider.getCurrentSlide();
        $(".new-header_slider li:not([class='bx-clone'])").eq(current+1).addClass('current');
  	  },
      onSliderLoad: function(){
        $(".header_slider_wr").find("li").removeClass("v_hidden"); // Показываем все слайды
        $(".new-header_slider li:not([class='bx-clone'])").eq(0+1).addClass('current');
      }
    });

 } else {

    var b_slider = $('.new-header_slider .new_header_slider_wr').find("ul").bxSlider({
  	  pagerCustom: '.header_slider_pager',
  	  controls:false,
  	  auto:true,
  	  minSlides:1,
  	  maxSlides:3,
  	  moveSlides:1,
  	  slideWidth:1024,
  	  onSlideBefore:function() {
  	    $(".new-header_slider li").removeClass('current').removeClass('white');
        var current = b_slider.getCurrentSlide();
        $(".new-header_slider li:not([class='bx-clone'])").eq(current+1).addClass('current');

        if (current == 2) {$(".new-header_slider li.bx-clone:nth-last-child(3)").addClass('white');}
  	  },
      onSliderLoad: function(){
        $(".header_slider_wr").find("li").removeClass("v_hidden"); // Показываем все слайды
        $(".new-header_slider li:not([class='bx-clone'])").eq(0+1).addClass('current');
      }
    });

 }
}

$(".side_nav .dropdown").on("click", function(){
    var menuopener = $(this);
    if (menuopener.hasClass("dropdown-left")) {
						menuopener.closest('li').children('ul').slideDown();
            menuopener.removeClass('dropdown-left');
						menuopener.addClass('dropdown-down');
				 }
				 else
				 {
						menuopener.closest('li').children('ul').slideUp();
						menuopener.removeClass('dropdown-down');
						menuopener.addClass('dropdown-left');
				 }
				 return false;
});
});
