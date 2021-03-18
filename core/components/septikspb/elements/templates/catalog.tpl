{extends 'template:Базовый шаблон'}
{block 'content'}
    <div class="container">

        {if $.get['query'] ?}
            {set $dsmc_parent = 9}
        {/if}

        {set $dsmc_parent = 'dsmc_mspcs_where' | placeholder}

        {'!msPCS' | snippet : [
        'parents' => $dsmc_parent ?: 'id' | resource,
        'up' => 1,
        'mode' => 2,
        'snippet' => 'mFilter2',
        'prepareSnippet' => 'dsmc.prepareSnippet',
        'paginator' => 'pdoPage',
        'element' => 'msProducts',
        'class' => 'msProduct',
        'parents' => $dsmc_parent ?: 'id' | resource,
        'limit' => 35,
        'sortby' => 'price',
        'sortdir' => 'ASC',
        'suggestions' => 1,
        'toPlaceholders' => 'dsmc.',
        'tpl' => 'tpl.msProducts.row.list.dsmc',
        'tplFilter.outer.default' => 'tpl.mFilter2.filter.outer',
        'tplFilter.row.default' => 'dsmc.tpl.mFilter2.filter.checkbox',
        'tplPageWrapper' => '@INLINE
        <div class="pagination mse2_pagination">
            <ul class="pagination">{$prev}{$pages}{$next}{$last}</ul>
        </div>
    '
        ]}

        <div id="mse2_mfilter">
            <div class="hero-heading">
                {if 'pagetitle_full' | tv ?}
                    <h1>
                        {'pagetitle_full' | tv}
                    </h1>
                {else}
                    <h1>
                        {'pagetitle' | resource}
                    </h1>
                {/if}
            </div>
            <div class="row flex-column-reverse flex-xl-row">
                <div class="col-lg-3">
                    <div class="side_nav_wr">
                        <div class="catalog-button-text">Каталог</div>
                        <div class="navbar navbar_left pl-0">

                            <div class="mb-3 w-100 d-none d-lg-block">
                                <a href="{'659' | url}" class="btn btn-primary btn-block btn-lg btn-icon-label">
                            <span class="btn-inner-icon">
                               <svg class="svg-icon">
                                    <use xlink:href="#icon-calculator"></use>
                                </svg>
                            </span>
                                    <span class="btn-inner-text">
                                Калькулятор
                            </span>
                                </a>
                            </div>

                            {'!pdoMenu' | snippet : [
                            'parents' => 9,
                            'level' => 3,
                            'outerClass' => 'nav flex-column border-bottom-dashed pb-3 d-none d-lg-block w-100 left_menu',
                            'innerClass' => 'nav'
                            'rowClass' => 'nav-item'
                            'hereClass' => 'active active-item'
                            'tplInner' => 'wrapper.leftbar.submenu.dsmc'
                            'levelClass' => 'level'
                            'tpl' => 'tpl.leftbar.dsmc'
                            'tplInnerRow' => 'tpl.leftbar.innerrow.dsmc'
                            'tplParentRow' => 'tpl.leftbar.tplParentRow.dsmc'
                            'tplParentRowActive' => 'tpl.leftbar.tplParentRowActive.dsmc'
                            'where' => [
                            'template:IN' => [3,18,1,27,29,32],
                            'AND:parent:NOT IN' => [229]
                            ]
                            ]}


                            {if 'template' | resource == 32}
                                <div class="filters sidebar-filter" id="navbarFilter" data-sidebar-menu="sidebar-filter">
                                    <form action="{$_modx->resource.id | url}" method="post" id="mse2_filters">
                                        {if 'dsmc.filters' | placeholder != 'Нечего фильтровать'}
                                            {'dsmc.filters' | placeholder}
                                        {/if}
                                    </form>
                                </div>
                                <!-- Modal -->
                                <div id="sidebarFilrer" tabindex="-1" role="dialog" class="modal fade modal-left" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title my-2" id="sidebarFilrerLabel">Фильтры</h5>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <div class="sidebar-filter"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            {/if}
                        </div>
                    </div>
                </div>
                <div class="col-lg-9">

                    {if 'content2' | tv ?}
                        <div class="lead" itemprop="mainContentOfPage">
                            {'content2' | tv}
                        </div>
                    {/if}

                    {set $rows = json_decode($_modx->resource.migx_category, true)}


                    {if $rows ?}
                        <div class="category_form">
                            <hr>
                            <span class="h5">Популярные запросы:</span>
                            <ul class="nav nav-pills nav-fill py-4">
                                {foreach $rows as $row}
                                    <li class="nav-item"><a
                                                href="{$row.link}" {if $row.title ?}{$row.title}{/if} {if $row.target
                            ?}target="_blank"{/if}
                                                class="nav-link">{$row.name}</a></li>
                                {/foreach}
                            </ul>
                        </div>
                    {/if}

                    <header class="product-grid-header p-0 d-flex justify-content-xl-end justify-content-between">
                        <div class="d-flex align-items-center justify-content-between justify-content-lg-end col-12 product-grid-header-bg px-0">
                            <button type="button" class="btn product-grid-header-toggler d-block d-lg-none" data-toggle="modal"
                                    data-target="#sidebarFilrer">
                                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor"
                                     class="bi bi-funnel" viewBox="0 0 16 16">
                                    <path d="M1.5 1.5A.5.5 0 0 1 2 1h12a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-.128.334L10 8.692V13.5a.5.5 0 0 1-.342.474l-3 1A.5.5 0 0 1 6 14.5V8.692L1.628 3.834A.5.5 0 0 1 1.5 3.5v-2zm1 .5v1.308l4.372 4.858A.5.5 0 0 1 7 8.5v5.306l2-.666V8.5a.5.5 0 0 1 .128-.334L13.5 3.308V2h-11z"/>
                                </svg>
                            </button>
                            <select name="sort" id="mse2_sort" data-style="btn-selectpicker bg-white" title=""
                                    class="selectpicker">
                                <option class="sort" data-sort="resource|pagetitle" value="asc">А-Я</option>
                                <option class="sort" data-sort="resource|pagetitle" value="desc">Я-А</option>
                                <option class="sort" data-sort="ms|price" value="asc">Цена ↑</option>
                                <option class="sort" data-sort="ms|price" value="desc">Цена ↓</option>
                            </select>
                        </div>
                    </header>

                    <div id="mse2_results" class="row">
                        {'dsmc.results' | placeholder}
                    </div>

                    {'page.nav' | placeholder}


                </div>
            </div>
        </div>
    </div>
    {if 'content' | resource ?}
        <section class="section py-5">
            <div class="container">
                <div class="text-content">
                    {'content' | resource}
                </div>
            </div>
        </section>
    {/if}

    {*
    <div class="section py-4">
        <div class="container">
            {'!infoBlock' | snippet : [
            'id' => 7
            ]}
        </div>
    </div>


    <section class="section section-skew py-6 bg-light">
        <div class="section-skew-layer section-skew-layer-mobile-right bg-primary skew-layer-from-right" data-skew-layer="" data-skew-layer-value="90%" data-skew-layer-from="right" style="right: 65%; transition: right 300ms ease 0s;"></div>
        <div class="container">
            <div class="row">
                <div class="col-7 offset-5">
                    <h2 class="h1 mb-4">Качество и надежность</h2>
                    <p>
                        СептикСервис – это более 1500 выполненных проектов по всему Северо-Западу. Наши клиенты живут в Ленинградской, Псковской, Новгородской областях, а также в республике Карелия.
                        Мы предлагаем <span class="font-weight-bold text-dark">загородные септики под ключ от 80 000 рублей!</span>
                    </p>
                    <hr>
                    <p class="text-sm">Стоимость позиций указана с учётом доставки и установки. Это – ещё один положительный фактор сотрудничества. Работа под ключ – гарантия их бесперебойной службы. Монтаж, обслуживание, ремонт выполняются нами. Мы отлично знаем реализуемое оборудование. Это обеспечит наиболее высокое качество. Сделать заказ можно по телефону +7 (812) 922-32-05 или электронной почте info@septikspb.com. Доставка осуществляется по Ленинградской, Псковской, Новгородской областям, Карелии.
                    </p>
                    <a href="{'228' | url}" class="btn btn-lg btn-success mt-4">Подробнее о наших проектах</a>
                </div>
            </div>
        </div>
    </section>

    {'!infoBlock' | snippet : [
    'id' => 6
    ]}
    *}

{/block}
