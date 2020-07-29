<html>
{include 'dsmc_head'}
<body class="template{'template' | resource} page{'id' | resource} body_mark2" itemscope
      itemtype="http://schema.org/WebPage">

{include 'dsmc_header'}

{if $_modx->user.id > 0}
    <section>
        <div class="main-slider">
            {set $banner = json_decode($_modx->resource.migx_new_top_banner, true)}
            {foreach $banner as $item}
                <a href="{$item.link}">
                    <div class="slider-item mobile" style="background-image:url('userimg/{$item.mini_image}');"></div>
                    <div class="slider-item desktop" style="background-image:url('userimg/{$item.image}');"></div>
                </a>
            {/foreach}
        </div>
    </section>
{/if}


[[!bottomAdd?&input=`
<script>
    $('.header_slider_wr').find("ul").bxSlider({
        pagerCustom: '.header_slider_pager',
        controls: false,
        auto: true,
        onSliderLoad: function () {
            $(".header_slider_wr").find("li").removeClass("v_hidden"); // Показываем все слайды
        }
    });
</script>
`]]
<main>
    <div class="lb_index_1">
        <div class="container">
            <h1 class="lb_title">Cептики для дач и загородных домов</h1>
            <div class="real-content">

                <p>
                    СептикСервис – это команда опытных инженеров из Санкт-Петербурга, которая занимается проектированием
                    и <br/>
                    установкой систем <a href="[[~275]]" class="with_icon"><img src="img/ti1.png" alt=""/>АВТОНОМНОЙ
                        КАНАЛИЗАЦИИ</a> и <a href="[[~274]]" class="with_icon"><img src="img/ti2.png"
                                                                                    alt=""/>СЕПТИКОВ</a>. Применяемые
                    технологии, <br/>
                    теоретическая подготовка и многолетний опыт позволяют нам решать проблемы отсутствия центрального
                    <br/>
                    водоотведения в частных домах и коттеджах с помощью установки септиков.
                    <i><br/><br/></i>
                    Доведем степень очистки сточных вод <br/>
                    <a class="with_icon" href="[[~19]]"><img src="img/ti3.png" alt=""/>ДО 95 ПРОЦЕНТОВ</a> на участках
                    <a href="[[~312]]" class="with_icon"><img src="img/ti4.png" alt=""/>
                        С ЭЛЕКТРИЧЕСТВОМ</a> и <a class="with_icon" href="[[~325]]"><img src="img/ti5.png" alt=""/>БЕЗ
                        ЭЛЕКТРИЧЕСТВА</a> <br/>
                    Используя продукцию ведущих производителей систем ЛОС и станций биологической <br/>
                    очистки,разрабатываем проекты на
                    <a href="[[~95]]" class="with_icon"><img src="img/ti7.png" alt=""/>ЛЮБОЙ КОШЕЛЕК</a>
                </p>

            </div>
        </div>
    </div>
    <div class="lb_index_2">
        <div class="container">
            <h2 class="lb_title">Готовые решения от СептикСервис</h2>
            <div class="real-content">
                <p>За десять лет работы по организации канализаций для частных домов мы выработали выгодные и гибкие по
                    цене комплексные предложения «под ключ». Они подходят для большинства наших клиентов.<br><br></p>
            </div>
            <div class="solution_wr owl-carousel owl-theme">

                <div>
                    <div class="solution_item">
                        <div class="solution_item_image">
                            <img src="userimg/solution_3.png" alt=""></a>
                        </div>
                        <div class="solution_item_title">Канализация<br>на трех человек</a></div>
                        <div class="solution_item_price">от 32 200 руб.</div>
                        <div class="solution_item_subtitle">Оборудование + монтаж «под ключ» от 50 200 руб.</div>
                        <a class="solution_item_order" href="[[~278]]">Подробнее</a>
                    </div>
                </div>
                <div>
                    <div class="solution_item">
                        <div class="solution_item_image">
                            <img src="userimg/solution_4.jpg" alt=""></a>
                        </div>
                        <div class="solution_item_title">Канализация<br>на четыре человека</a></div>
                        <div class="solution_item_price">от 39 500 руб.</div>
                        <div class="solution_item_subtitle">Оборудование + монтаж «под ключ» от 57 500 руб.</div>
                        <a class="solution_item_order" href="[[~287]]">Подробнее</a>
                    </div>
                </div>
                <div>
                    <div class="solution_item">
                        <div class="solution_item_image">
                            <img src="userimg/solution_5.png" alt=""></a>
                        </div>
                        <div class="solution_item_title">Канализация<br>на пять человек</a></div>
                        <div class="solution_item_price">от 39 500 руб.</div>
                        <div class="solution_item_subtitle">Оборудование + монтаж «под ключ» от 57 500 руб.</div>
                        <a class="solution_item_order" href="[[~281]]">Подробнее</a>
                    </div>
                </div>
                <div>
                    <div class="solution_item">
                        <div class="solution_item_image">
                            <img src="userimg/solution_8.png" alt=""></a>
                        </div>
                        <div class="solution_item_title">Канализация<br>на восемь человек</a></div>
                        <div class="solution_item_price">от 66 300 руб.</div>
                        <div class="solution_item_subtitle">Оборудование + монтаж «под ключ» от 86 300 руб.</div>
                        <a class="solution_item_order" href="[[~282]]">Подробнее</a>
                    </div>
                </div>

            </div>
            <div class="lb_button_t1_wr">
                <a href="[[~481]]" class="lb_button_t1 lb_button_t1_calc"><span>Калькулятор</span></a>
            </div>
            <p><br><br>Вы можете выбрать наиболее подходящее для вас предложение по количеству жильцов в доме и оставить
                заявку на нашем сайте. Мы обеспечим бесплатный выезд нашего замерщика. Он оценит фронт работ, а вы
                сделаете окончательный выбор.</p>
        </div>
    </div>
    <div class="lb_index_3">
        <div class="container">
            <h2 class="lb_title">Только лучшие септики и канализация</h2>
            <p>Наши партнеры – это проверенные производители систем автономной канализации и септиков. Наша компания
                прочно заняла свою нишу на рынке продажи, проектирования и монтажа ЛОС. Это стало возможно благодаря
                качеству продукции партнеров компании, отличном сервису и длительной гарантии.<br><br></p>
            <div class="product_filter_wr">
                <div class="product_filter_triggers">
                    <div class="product_filter_title">НАШИ ХИТЫ:</div>
                    <div class="product_filter_trigger" data-type="astra" data-link="[[~19]]">Юнилос Астра</div>
                    <div class="product_filter_trigger" data-type="unisep" data-link="[[~217]]">UNI-SEP</div>
                    <div class="product_filter_trigger" data-type="zorde" data-link="[[~576]]">Zorde</div>
                    <div class="product_filter_trigger" data-type="tver" data-link="[[~350]]">Тверь</div>
                    <div class="product_filter_trigger" data-type="volgar" data-link="[[~417]]">Волгарь</div>
                    <div class="product_filter_trigger" data-type="ergobox" data-link="[[~326]]">Ergobox</div>
                    <div class="product_filter_trigger" data-type="rostok" data-link="[[~332]]">Росток</div>
                    <div class="product_filter_trigger" data-type="stekloplast" data-link="[[~56]]">Септики из
                        стеклопластика
                    </div>
                    <!--<div class="product_filter_trigger" data-type="ital" data-link="[[~515]]">Кессоны Rodlex</div>-->
                    <div class="product_filter_trigger" data-type="hit" data-link="[[~182]]">Компрессоры</div>
                    <div class="product_filter_trigger" data-type="nakopitel" data-link="[[~57]]">Накопители</div>

                </div>
                <div class="product_t1_wr ">
                    <div class="row">
                        [[msProducts?
                        &parents=`9`
                        &depth=`10`
                        &tpl=`tpl.msProducts.row.0407`
                        &includeTVs=`prop_person,prop_shower,prop_toilet,prop_sink,prop_washer,prop_dishwasher,price_montage,prop_bath,show_on_index`
                        &sortby=`article`
                        &sortdir=`ASC`
                        &limit=`0`
                        [[-&where=`{"Data.favorite:=": 1}`]]
                        &where=`{"show_on_index:!=": ""}`
                        ]]
                    </div>
                </div>
            </div>
            <div class="lb_button_t1_wr">
                <a href="[[~9]]" class="lb_button_t1 lb_button_t1_catalog"><span>Перейти в каталог</span></a>
            </div>
            <div class="real_content">
                <p>Мы являемся официальным дилером самых надежных на рынке производителей ЛОС. СептикСервис предлагает
                    вам самые выгодные условия продажи и установки оборудования наших партнеров в Санкт-Петербурге!</p>
            </div>
        </div>
    </div>
    [[!bottomAdd?&input=`
    <script>
        $(document.body).on("click", ".product_filter_trigger", function () {
            var t = $(this);
            var fi = $(".product_filter_wr").find(".product_filter_elem");
            if (t.hasClass("active")) {
                // t.removeClass("active");
            } else {
                fi.removeClass("active");
                $(".product_filter_trigger").removeClass("active");
                t.addClass("active");
                var type = t.data("type");
                fi.each(function () {
                    if ($(this).data("typeis").search(type) !== -1) {
                        $(this).addClass("active");
                        return true;
                    }
                });
                t.closest(".lb_index_3").find(".lb_button_t1_catalog").attr("href", t.data("link"));
            }
        });
        $(document).ready(function () {
            $(".product_filter_trigger[data-type='astra']").click();
        });
        /*
        $(document.body).on("click", ".filter_select_trigger_drop", function(){
          $(".filter_select_result").find(".filter_item").removeClass("hidden");
          $(".filter_select_trigger").removeClass("active");
        });
        $(document).ready(function(){
          if(window.location.hash){
            var h = window.location.hash.substr(1);
            console.log(h);
            $(".filter_select_trigger").filter(function(){
              if($(this).data("type") == h){
                return true;
              }
            }).click();
            window.location.hash = "";
          }
        });
        */
    </script>
    `]]
    <div class="lb_index_4">
        <div class="container">
            <h2 class="lb_title">СептикСервис - ваш правильный выбор</h2>
            <div class="real_content">
                <p>Наша компания - это высокое качество услуг и прозрачные цены. Мы с удовольствием проводим для наших
                    клиентов подробные консультации. Мы подберем оптимальное оборудование, спроектируем канализационныю
                    систему, а также сохраним баланс природы и технологий на участке.</p>
            </div>
            <div class="lb4_wr">
                <div class="row">
                    <div class="col-md-3 col-sm-3 col-xs-12">
                        <div class="lb4_item">
                            <div class="lb4_item_main"><span>10</span></div>
                            <div class="lb4_item_title">10 лет<br>на рынке септиков</div>
                            <div class="lb4_item_link"><a href="[[~3]]">О компании</a></div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-3 col-xs-12">
                        <div class="lb4_item">
                            <div class="lb4_item_main" style="background-image:url('css/images/icon_cbm.png')">&nbsp;
                            </div>
                            <div class="lb4_item_title">Представитель лучших<br>производителей</div>
                            <div class="lb4_item_link"><a href="[[~3]]">Смотреть сертификаты</a></div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-3 col-xs-12">
                        <div class="lb4_item">
                            <div class="lb4_item_main"><span>1500+</span></div>
                            <div class="lb4_item_title">Смонтировали<br>более 1500 систем</div>
                            <div class="lb4_item_link"><a href="[[~228]]">География проектов</a></div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-3 col-xs-12">
                        <div class="lb4_item">
                            <div class="lb4_item_main"><i class="fa fa-star"></i></div>
                            <div class="lb4_item_title">Постоянные<br>акции</div>
                            <div class="lb4_item_link"><a href="[[~146]]">Узнать больше</a></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="lb_index_5">
        <div class="container">
            <h2 class="lb_title">Как мы работаем</h2>
            <div class="real_content">
                <p>Наша компания всегда работает только по официальному договору. Мы пользуемся собственными постоянными
                    бригадами компании. Они обладают необходимой специализацией, опытом по качественному обустройству
                    автономных канализаций на частных участках.</p>
            </div>
            <div class="lb5_wr">
                <div class="row  owl-carousel owl-theme">
                    <div class="">
                        <div class="ld5_item">
                            <div class="ld5_item_image"><img src="css/images/hwd_1.png" alt=""></div>
                            <div class="ld5_item_title">Принимаем<br>заявку</div>
                        </div>
                    </div>
                    <div class="">
                        <div class="ld5_item">
                            <div class="ld5_item_image"><img src="css/images/hwd_2.png" alt=""></div>
                            <div class="ld5_item_title">Выезжаем<br>на замер</div>
                        </div>
                    </div>
                    <div class="">
                        <div class="ld5_item">
                            <div class="ld5_item_image"><img src="css/images/hwd_3.png" alt=""></div>
                            <div class="ld5_item_title">Монтируем<br>за один день</div>
                        </div>
                    </div>
                    <div class="">
                        <div class="ld5_item">
                            <div class="ld5_item_image"><img src="css/images/hwd_4.png" alt=""></div>
                            <div class="ld5_item_title">Оплата<br>на участке</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="lb_button_t1_wr">
                <a data-fancybox data-src="#mounting-form" class="lb_button_t1 lb_button_t1_worker" href="javascript:;"
                   href=""><span>Заказать выезд инженера</span></a>
            </div>
        </div>
    </div>
    <div class="lb_index_6">
        <div class="container">
            <div class="col-xs-table">
                <div class="col-xs-tr">
                    <div class="col-xs-td lb6_left">
                        <div class="lb6_link_title">Карта выполненых<br>обьектов</div>
                        <a href="[[~228]]" class="lb6_link">Смотреть все</a>
                    </div>
                    <div class="col-xs-td lb6_right">
                        <div class="real_content">
                            <h2 class="lb6_title">Сотни довольных<br>нами клиентов</h2>
                            <p>Мы разработали и воплотили в жизнь <strong>более 1500 проектов по всему
                                    Северо-Западу</strong>. Сотрудничество с нами - это специальные проекты для всех и
                                каждого. Эффективное финансовое вложение, учет всех ваших пожеланий, безупречное
                                гарантийное обслуживание - это СептикСервис!</p>
                            <p>Мы постоянно отслеживаем новые предложения от производителей, тенденции рынка и
                                потребностей наших клиентов. Таким образом мы предлагаем только самые современные
                                инженерные решения, которые бесперебойно прослужат вам долгое время. Портфолио компании
                                подтверждает наш огромный опыт, тщательность монтажа, а также в обширную географию
                                нашего бизнеса. Мы производим монтаж и доставку по <strong>Ленинградской, Псковской,
                                    Новгородской области, Карелии</strong></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="lb_index_7">
        <div class="container">
            <h2 class="lb_title">Почему мы? Мы знаем свое дело!</h2>
            <div class="row">
                <div class="col-md-6 col-sm-6 col-xs-12">
                    <div class="real_content">
                        <p>Начиная с 2010 года, мы накопили бесценный опыт. <strong>Мы установили более 1500 канализаций
                                и септиков</strong> в загородных домах наших клиентов. Мы понимаем, что канализация из
                            бетонных колец, сделанная своими руками - прошлый век. Полноценная система очистки стоков -
                            это уже стандарт жизни, который быстро входит в нашу жизнь, меняя образ мышления в сторону
                            экологии.</p>
                        <p>Нам не нужна агрессивная реклама – <strong>нас рекомендуют</strong>, ведь мы предлагаем
                            только честные цены на весь каталог товаров. Мы регулярно устраиваем акции, не забывая про
                            качество монтажа! <strong>Мы - ответственный и надежный подрядчик.</strong></p>
                    </div>
                </div>
                <div class="col-md-6 col-sm-6 col-xs-12">
                    <div class="real_content">
                        <p>Мы постоянно работаем над расширением ассортимента септиков и станций очистки. Добавляем в
                            наш каталог востребованное оборудование из полиэтилена, полипропилена, стеклопластика.
                            Поэтому вопрос <strong>«Какой септик купить?»</strong> лучше доверить нам. Иначе вы рискуете
                            впустую потратить время и силы на изучение информации в интернете и, скорее всего, не
                            получить ответа.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="lb_index_8">
        <div class="container">
            <div class="lb8_content">
                <img src="css/images/icon_lb8_serv.png"
                     alt=""><span>Сервисная служба работает без выходных и праздников</span>
            </div>
        </div>
    </div>
</main>
<div id="mounting-form" style="display:none">
    <div class="row">
        <div class="col-lg-6 bg-success-2 p-5">
            {'!mvtForms2' | snippet : ['form'=>'mounting_main']}
        </div>
        <div class="col-lg-6 p-5 d-flex flex-column justify-content-center">
            <div class="d-flex align-items-center">
                <div class="mr-5">
                    <img src="img/formphone.png">
                </div>
                <div>
                    <h3 class="h3 text-uppercase text-success">Заказать <br>выезд инженера</h3>
                </div>
            </div>
            <p class="mt-4">По всем интересующим вопросам отправьте нам сообщение и мы свяжемся с Вами</p>
        </div>

    </div>
</div>
{include 'footer'}
{include 'scripts'}
</body>
</html>