{extends 'template:Базовый шаблон'}
{block 'content'}

<section class="section section-bg-image" style="background-image: url('img/about_bg1.jpg')">
    <div class="container">
        <div class="section-title section-dark py-6 text-center">
            <h1 class="h2 text-white">{'landing_topbanner_title' | tv}</h1>
            <div class="lead pb-0">
                <p class="lead text-white text-lg pb-0">
                    {'landing_topbanner_desc' | tv}
                </p>
            </div>
        </div>
    </div>
</section>

<section class="section py-6">
    <div class="container">
        <div class="section-title">
            <h3 class="h2 mb-4">{'landing_working_title' | tv}</h3>
            {'!listing' | snippet : [
            'tvText' => 'landing_working_list' | tv
            ]}
            <div class="pt-4 text-center">
                <a class="btn btn-success btn-pills btn-lg" href="{'659' | url}">Рассчитать стоимость работ</a>
            </div>
        </div>
    </div>
</section>

{'!infoBlock' | snippet : [
'id' => 9
]}

{'!infoBlock' | snippet : [
'id' => 10
]}


<section class="section section-skew py-6 bg-light">
    <div class="section-skew-layer section-skew-layer-mobile-right bg-success skew-layer-from-right" data-skew-layer=""
         data-skew-layer-value="90%" data-skew-layer-from="right"
         style="right: 65%; transition: right 300ms ease 0s;"></div>
    <div class="container">
        <div class="row">
            <div class="col-7 offset-5">
                <h2 class="h1 mb-4">Качество и цены</h2>
                <p>Мы свели к минимуму бюджет на рекламу, получая новые проекты по рекомендациям от довольных клиентов,
                    которым мы устанавливали септики или системы канализации для загородного дома и дачи.</p>
                <p>Поэтому наши цены на оборудование и монтажные работы остаются одними из самых низких при стабильно
                    высоком качестве.</p>
            </div>
        </div>
    </div>
</section>
{'!ms2Gallery' | snippet : [
'tags' => 'наша работа'
'tpl' => 'dsmc.ms2gallery.work'
]}
<section class="section section-masonry bg-light py-6">
    <div class="container">
        <div class="section-title mb-5">
            <h2>Компания и коллектив <span class="text-success">«СептикСервис»</span> это:</h2>
        </div>
        <div class="row">
            <div class="col-12 col-lg-3 d-flex flex-column">
                <div class="row">
                    <div class="col-12 col-md-6 col-lg-12">
                        <div class="card mb-3">
                            <div class="card-body pt-4 px-3 px-lg-5 pb-4 d-flex flex-row d-lg-block align-items-center">
                                <div class="card-text pb-0 pb-lg-5 text-center col-4 col-lg-12">
                                    <img src="img/at1.png" alt="">
                                </div>
                                <div class="card-text text-sm">
                                    Всегда выгодные цены по Санкт-Петербургу и Ленинградской области
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-6 col-lg-12">
                        <div class="card mb-3 mb-lg-0">
                            <div class="card-body pt-4 px-3 px-lg-5 pb-4 d-flex flex-row d-lg-block align-items-center">
                                <div class="card-text pb-0 col-4 col-lg-12 pb-lg-5 text-center">
                                    <img src="img/at4.png" alt="">
                                </div>
                                <div class="card-text text-sm">
                                    Профессиональный монтаж систем загородной канализации
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-12 col-lg-6 d-flex flex-column justify-content-between">
                <div class="row">
                    <div class="col-12 col-md-6 mb-3">
                        <div class="card h100 mb-3 mb-lg-0">
                            <div class="card-body pt-4 px-3 px-lg-5 pb-4 d-flex flex-row d-lg-block align-items-center">
                                <div class="card-text pb-0 pb-lg-5 text-center col-4 col-lg-12">
                                    <img src="img/at2.png" alt="">
                                </div>
                                <div class="card-text text-sm">
                                    Консультации и ответы на вопросы по телефону от «первого человека» без долгого
                                    ожидания на линии и переключений
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-6 mb-3">
                        <div class="card h-100 mb-n3">
                            <div class="card-body pt-4 px-3 px-lg-5 pb-4 d-flex flex-row d-lg-block align-items-center align-items-lg-start">
                                <div class="card-text pb-0 pb-lg-5 text-center col-4 col-lg-12">
                                    <img src="img/at3.png" alt="">
                                </div>
                                <div class="card-text text-sm">
                                    Собственные монтажные бригады, работающие на постоянной основе
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card h-100">
                    <div class="card-body py-4 d-flex flex align-items-center">
                        <div class="card-text text-center col-lg-4">
                            <img src="img/at5.png" alt="">
                        </div>
                        <div class="card-text text-sm">
                            Качественное оборудование и материалы от производителей, которые зарекомендовали
                            себя на протяжении многих лет
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 d-flex flex-column">
                <div class="card h-100 mt-3 mt-lg-0">
                    <div class="card-body pt-4 px-5 pb-4 d-flex flex-column justify-content-center">
                        <div class="card-text pb-5 text-center">
                            <img src="img/at6.png" alt="">
                        </div>
                        <div class="card-text text-sm">
                            <p>Ответственный и надежный партнер, который поможет вам решить любой вопрос, связанный с
                                загородной канализацией.</p>
                            <p>Гарантийные обязательства на работы и оборудование, которые мы неукоснительно
                                соблюдаем</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
{'!msProductsSection' | snippet : [
'snippet' => 'ms2Gallery'
'tags' => 'дипломы и сертификаты',
'tpl' => 'dsmc.ms2gallery.certifications',
'wrapperPlaceholders' => [
'title' => 'Наши дипломы и сертификаты'
]
]}

{/block}
{block 'form_button'}
{/block}