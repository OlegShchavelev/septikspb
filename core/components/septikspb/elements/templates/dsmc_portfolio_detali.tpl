<!DOCTYPE html>
<html>
{include 'dsmc_head'}
<body class="template{'template' | resource} page{'id' | resource} body_mark2" itemscope itemtype="http://schema.org/WebPage">
{include 'dsmc_header'}
{include 'breadcrumb'}

<div class="container" itemscope itemtype="http://schema.org/WebPage">
    <div class="row">
        <div class="col-md-12">
            {if $_modx->resource.pagetitle_full != ''}
                <h1>{$_modx->resource.pagetitle_full}</h1>
            {else}
                <h1>{$_modx->resource.pagetitle}</h1>
            {/if}
            <div class="real_content" itemprop="mainContentOfPage">
                <section class="pt-5">
                    <div class="row pb-md-2">
                        <div class="col-md-5">
                            {'!ms2Gallery' | snippet : [
                            ]}
                        </div>
                        <div class="col-md-7 pt-4 pt-md-0 mb-lg-4 pb-lg-2">
                            <h3 class="h5 font-weight-bold">Основная информация</h3>
                            <ul class="list-group font-size-md pt-4 mb-4 pb-2">
                                {if 'introtext' | resource ?}
                                <li class="mb-2 list-group-item py-0 mx-0 px-0 border-0">Локация:<span class="font-weight-medium text-nav text-muted ml-2">{'introtext' | resource}</span></li>
                                {/if}
                                {if $_modx->resource.tv_portfolio_servies ?}
                                <li class="mb-2 list-group-item py-0 mx-0 px-0 border-0">Услуга:<span class="font-weight-medium text-nav text-muted ml-2">{$_modx->resource.tv_portfolio_servies}</span></li>
                                {/if}
                            </ul>
                            {if 'content' | resource}
                            <h3 class="h5 font-weight-bold">Описание</h3>
                            {'content' | resource}
                            {/if}

                            {if $_modx->resource.tv_portfolio_map ?}
                            <div id="portfolio_map" style="width: 100%; height: 400px"></div>
                            {/if}
                        </div>
                    </div>
                </section>
            </div>

            {if $_modx->resource.tv_portfolio_product ?}
            <div class="container">
                {'!msProductsSection' | snippet : [
                'depth' => 0,
                'limit' => 1,
                'wrapperPlaceholders' => [
                'title' => 'Оборудование'
                ],
                'tpl' => 'tpl.msProducts.row.list.dsmc',
                'parents' => 0,
                'resources' => $_modx->resource.tv_portfolio_product,
                'tplWrapper' => 'wrapper.showcase.dsmc',
                'wrapIfEmpty' => 0,
                'title' => 'Похожие товары'
                ]}
            </div>
            {/if}

            <div class="bg-light forms-septic p-4 p-xl-5">
                {'!mvtForms2' | snippet : ['form'=>'septic']}
            </div>

            {'msProductsSection' | snippet : [
            'depth' => 0,
            'wrapperPlaceholders' => [
            'title' => 'Вы смотрели'
            'item' => 'item',
            ],
            'limit' => 4,
            'parents' => 0,
            'showUnpublished' => 1,
            'resources' => $addToViewed
            'tpl' => 'tpl.msProducts.row.grid.dsmc',
            'tplWrapper' => 'wrapper.showcase.dsmc',
            'wrapIfEmpty' => 0
            ]}

        </div>
    </div>

</div>

{if 'id' | resource == 183}
    {'!mvtForms2' | snippet : ['form'=>'engineer']}
{else}
    {'!mvtForms2' | snippet : ['form'=>'magnet']}
{/if}

{include 'footer'}

{include 'scripts'}

</body>
<script type="text/javascript">
    ymaps.ready(init);
    function init(){
        var myMap = new ymaps.Map("portfolio_map", {
            center: [{$_modx->resource.tv_portfolio_map}],
            zoom: 7
        });
        // Создание геообъекта с типом точка (метка).
        var myGeoObject = new ymaps.GeoObject({
            geometry: {
                type: "Point", // тип геометрии - точка
                coordinates: [{$_modx->resource.tv_portfolio_map}] // координаты точки
            }
        });

        // Размещение геообъекта на карте.
        myMap.geoObjects.add(myGeoObject);
    }
</script>
</html>
