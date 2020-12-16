{extends 'template:Базовый шаблон'}
{block 'content'}


<div class="container" itemprop="mainContentOfPage">
    <h1>{$_modx->resource.pagetitle}</h1>

    <div class="d-flex flex-lg-column flex-column-reverse">
        <div class="py-4 px-3 bg-light features-sections">
            <span class="intro-title px-3 d-block">Постоянные преимущества СептикСервис:</span>
            <div class="row my-4">
                {set $rows = json_decode($_modx->resource.features, true)}
                {foreach $rows as $row}
                <div class="col-lg-4 mt-3">
                    <div class="icon-box mb-4 mb-lg-0">
                        <div class="d-flex px-3">
                            <div>
                                <div class="icon icon-shape icon-shape-primary icon-circle">
                                    <i class="{$row.icon}"></i>
                                </div>
                            </div>
                            <div class="pl-4">
                                <span class="h5 section-title">{$row.title}</span>
                                <p>{$row.intro}</p>
                            </div>
                        </div>
                    </div>
                </div>
                {/foreach}
            </div>
        </div>
        <div class="row stocks my-5">
            {'!pdoResources' | snippet : [
            'tpl' => 'dsmc.row.stock_card',
            'includeTVs' => 'image',
            'tvPrefix' => ''
            ]}
        </div>
    </div>
</div>

{/block}