<!DOCTYPE html>
<html>
{include 'dsmc_head'}
<body class="template{'template' | resource} page{'id' | resource} body_mark2" itemscope
      itemtype="http://schema.org/WebPage">
{include 'dsmc_header'}
{include 'breadcrumb'}
<div class="container">

    {'!msPCS' | snippet : [
    'up' => 1,
    'mode' => 2,
    'snippet' => 'mFilter2'
    'paginator' => 'pdoPage',
    'element' => 'msProducts',
    'class' => 'msProduct',
    'depth' => 1,
    'limit' => 35,
    'sortby' => 'price',
    'sortdir' => 'ASC',
    'suggestions' => 1,
    'toPlaceholders' => 'dsmc.',
    'tpl' => 'tpl.msProducts.row.list.dsmc',
    'tplFilter.outer.default' => 'tpl.mFilter2.filter.outer',
    'tplFilter.row.default' => 'dsmc.tpl.mFilter2.filter.checkbox',
    ]}

    <div class="container main_category_container" id="mse2_mfilter">
        {if 'pagetitle_full' | tv ?}
            <h1>
                {'pagetitle_full' | tv}
            </h1>
        {else}
            <h1>
                {'pagetitle' | resource}
            </h1>
        {/if}
        <div class="row flex-column-reverse flex-xl-row">
            <div class="col-md-3 col-sm-12 col-xs-12 px-5 px-xl-0">
                <div class="side_nav_wr">
                    <div class="catalog-button-text">Каталог</div>
                    {include 'sidebar'}
                </div>
            </div>
            <div class="col-md-9 col-sm-12 col-xs-12">

                [[*content2:isnot=``:then=`
                <div class="real_content lead" itemprop="mainContentOfPage">
                    [[*content2]]
                </div>
                `]]

                {set $rows = json_decode($_modx->resource.migx_category, true)}


                {if $rows ?}
                    <div class="category_form">
                        <hr>
                        <span>Популярные запросы:</span>
                        <ul class="list list-inline">

                            {foreach $rows as $row}
                                <li class="list-inline-item"><a
                                            href="{$row.link}" {if $row.title ?}{$row.title}{/if} {if $row.target ?}target="_blank"{/if}
                                            class="btn btn-default btn-blue text-decoration-none">{$row.name}</a></li>
                            {/foreach}
                        </ul>
                    </div>
                {/if}

                <header class="product-grid-header p-0 d-flex justify-content-xl-end justify-content-between">
                    <div class="d-flex align-items-center justify-content-end col-12 px-0">
                        <select name="sort" id="mse2_sort" data-style="btn-selectpicker bg-white" title=""
                                class="selectpicker text-sm py-1 px-3">
                            <option class="sort" data-sort="resource|pagetitle" value="asc">А-Я</option>
                            <option class="sort" data-sort="resource|pagetitle" value="desc">Я-А</option>
                            <option class="sort" data-sort="ms|price" value="asc">Цена ↑</option>
                            <option class="sort" data-sort="ms|price" value="desc">Цена ↓</option>
                        </select>
                    </div>
                </header>

                {include 'tpl.mFilter2.result.dsmc'}

            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="real_content">
                    {$_modx->resource.content}
                </div>
            </div>
        </div>
    </div>

    <div class="lb_index_5">
        <div class="container">
            <h2 class="lb_title">Как мы работаем</h2>
            <div class="real_content">
                <p>Мы предлагаем надежные коммуникации, ведь наши партнеры и поставщики - лидирующие компании, давно и
                    прочно занявшие свою нишу на рынке оборудования для сооружения систем автономных канализации и
                    сопутствующего оборудования.</p>
            </div>
            <div class="lb5_wr">
                <div class="row owl-carousel owl-theme">
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
                            <div class="ld5_item_title">Получаем<br>оплату</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="lb_button_t1_wr">
                <a data-fancybox="" data-src="#mounting-form" class="lb_button_t1 lb_button_t1_worker"
                   href="javascript:;"><span>Заказать выезд инженера</span></a>
            </div>
        </div>
    </div>

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
</div>

{include 'footer'}
{include 'scripts'}
</body>
</html>