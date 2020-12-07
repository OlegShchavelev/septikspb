{extends 'template:Базовый шаблон'}
{block 'content'}

<div itemscope itemtype="http://schema.org/WebPage">
    <div class="hero">
        <div class="container">
            {if $_modx->resource.pagetitle_full != ''}
            <h1>{$_modx->resource.pagetitle_full}</h1>
            {else}
            <h1>{$_modx->resource.pagetitle}</h1>
            {/if}
        </div>
    </div>
    <div itemprop="mainContentOfPage">
        <section class="pt-5">
            <div class="container">
                <div class="row pb-md-2">
                    <div class="col-md-5">
                        {'!ms2Gallery' | snippet : [
                        'tpl' => 'dsmc.ms2Gallery.project'
                        ]}
                    </div>
                    <div class="col-md-7 pt-4 pt-md-0 mb-lg-4 pb-lg-2">
                        <h3 class="h5 font-weight-bold">Основная информация</h3>
                        <ul class="list-group font-size-md pt-4 mb-4 pb-2">
                            {if 'introtext' | resource ?}
                            <li class="mb-2 list-group-item py-0 mx-0 px-0 border-0">Локация:<span
                                        class="font-weight-medium text-nav text-muted ml-2">{'introtext' | resource}</span>
                            </li>
                            {/if}
                            {if $_modx->resource.tv_portfolio_servies ?}
                            <li class="mb-2 list-group-item py-0 mx-0 px-0 border-0">Услуга:<span
                                        class="font-weight-medium text-nav text-muted ml-2">{$_modx->resource.tv_portfolio_servies}</span>
                            </li>
                            {/if}
                        </ul>
                        {if 'content' | resource}
                        <h3 class="h5 font-weight-bold">Описание</h3>
                        {'content' | resource}
                        {/if}

                        {set $coords = 'tv_portfolio_map' | tv | split : ','}

                        <div id="portfolio_map" data-coords-x="{$coords[0]}" data-coords-y="{$coords[1]}"
                             style="width: 100%; height: 400px"></div>

                    </div>
                </div>
            </div>
        </section>
    </div>

    {if $_modx->resource.tv_portfolio_product ?}
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
    {/if}

    <section class="section bg-light py-6">
        <div class="container">
            {'!mvtForms2' | snippet : ['form'=>'septic']}
        </div>
    </section>

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

{/block}