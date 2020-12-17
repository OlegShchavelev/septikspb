{extends 'template:Базовый шаблон'}

{block 'breadcrumb'}
{/block}

{block 'content'}
{'!infoBlock' | snippet : [
'id' => 2
]}

<section class="section bg-light text-center py-6 border-0" itemprop="mainContentOfPage">
    <div class="container">
        <div class="section section-title text-center mb-4">
            <h1 class="h1 mb-5">Автономные канализации для частных домов и дач</h1>
        </div>
        <div class="text-content line-height-lg-3 col-12 col-lg-10 mx-auto">
            <p>
                СептикСервис – команда опытных инженеров из Санкт-Петербурга,
                которая занимается проектированием автономных канализаций,
                установкой <a href="{'274' | url}" class="badge-text-lg badge-icon"><i class="fas fa-archive"></i>cтанций
                    биологической очистки и септиков</a>. Применяемые технологии,
                теоретическая подготовка и многолетний опыт позволяют нам решать проблемы отсутствия центрального
                водоотведения в частных домах и коттеджах с помощью установки септиков.
            </p>
            <p>
                Доведем степень очистки сточных вод <a href="{'19' | url}" class="badge-text-lg badge-icon"><i
                            class="fas fa-percentage d-none d-xl-block"></i>до 95 процентов</a> на участках <a
                        href="{'312' | url}" class="badge-text-lg badge-icon"><i
                            class="fas fa-bolt d-none d-xl-block"></i> c электричеством</a> и <a href="{'325' | url}"
                                                                                                 class="badge-text-lg badge-icon"><i
                            class="fas fa-bolt d-none d-xl-block"></i>без электричества</a>.
                Используя продукцию ведущих производителей систем ЛОС и станций биологической
                очистки, мы разрабатываем проекты на <a href="{'659' | url}" class="badge-text-lg badge-icon"><i
                            class="fas fa-wallet d-none d-xl-block"></i>любой кошелек</a>
            </p>
        </div>
    </div>
</section>

<section class="section py-6 border-0">
    <div class="container">
        <div class="section section-title text-center">
            <h2 class="h1">Официальный дилер оборудования</h2>
            <div class="lead">
                <p class="intro-title">
                    Мы являемся официальным дилером самых надежных на рынке производителей ЛОС. СептикСервис предлагает вам самые выгодные условия продажи и установки оборудования наших партнеров в Санкт-Петербурге.
                </p>
            </div>
        </div>
        <div class="row py-4 no-gutters">
            {foreach $headerbar_main_menu.9.children as $item}
            <div class="col-md-6 col-lg-4">
                <div class="card shadow-sm card-nav no-gutters">
                    <div class="card-img-bg" style="background-image: url('{$item.tv_mscategories_image}');"></div>
                    <div class="card-body">
                        <div class="card-title">
                            <a href="{$item.uri}" class="h5">{$item.menutitle ?: $item.pagetitle}</a>
                        </div>
                        <div class="card-text">
                            <ul class="nav flex-column">
                                {foreach $item.children as $children}
                                <li class="nav-item">
                                    <a href="{$children.uri}" class="nav-link">
                                        {$children.menutitle ?: $children.pagetitle}
                                    </a>
                                </li>
                                {/foreach}
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            {/foreach}
        </div>
    </div>
    </div>
</section>

{'!infoBlock' | snippet : [
'id' => 1
]}

<div class="section py-6">
    <div class="container">
        <div class="section-title text-center">
            <h2>Только лучшие септики и канализация</h2>
            <div class="lead">
                <p class="intro-title">
                Наши партнеры – это проверенные производители систем автономной канализации и септиков. Наша компания
                прочно заняла свою нишу на рынке продажи, проектирования и монтажа ЛОС. Это стало возможно благодаря
                качеству продукции партнеров компании, отличном сервису и длительной гарантии.
                </p>
            </div>
        </div>


        {'!seoTabs' | snippet: [
        'tpl' => 'seoTabs.main'
        ]}
    </div>
</div>

{'!infoBlock' | snippet : [
'id' => 3
]}

{'!infoBlock' | snippet : [
'id' => 4
]}

{'!infoBlock' | snippet : [
'id' => 8
]}

<section class="section py-6">
    <div class="container">
        <div class="text-content">
            <div class="section-title text-center mb-5">
                <h2 class="h1">Почему мы? Мы знаем свое дело!</h2>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <p>Начиная с 2010 года, мы накопили бесценный опыт. <strong>Мы установили более 1500 канализаций
                            и септиков</strong> в загородных домах наших клиентов. Мы понимаем, что канализация из
                        бетонных колец, сделанная своими руками - прошлый век. Полноценная система очистки стоков -
                        это уже стандарт жизни, который быстро входит в нашу жизнь, меняя образ мышления в сторону
                        экологии.</p>
                    <p>Нам не нужна агрессивная реклама – <strong>нас рекомендуют</strong>, ведь мы предлагаем
                        только честные цены на весь каталог товаров. Мы регулярно устраиваем акции, не забывая про
                        качество монтажа! <strong>Мы - ответственный и надежный подрядчик.</strong></p>
                </div>
                <div class="col-md-6">
                    <p>Мы постоянно работаем над расширением ассортимента септиков и станций очистки. Добавляем в
                        наш каталог востребованное оборудование из полиэтилена, полипропилена, стеклопластика.
                        Поэтому вопрос <strong>«Какой септик купить?»</strong> лучше доверить нам. Иначе вы рискуете
                        впустую потратить время и силы на изучение информации в интернете и, скорее всего, не
                        получить ответа.</p>
                </div>
            </div>
        </div>
    </div>
</section>
{/block}