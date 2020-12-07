{extends 'template:Базовый шаблон'}
{block 'content'}

<div class="container" itemscope itemtype="http://schema.org/WebPage">
    <div class="row">
        <div class="col-md-3 col-sm-12 col-xs-12">
            {include 'sidebar'}
        </div>
        <div class="col-md-9 col-sm-12 col-xs-12">

            {if $_modx->resource.pagetitle_full != ''}
                <h1>{$_modx->resource.pagetitle_full}</h1>
            {else}
                <h1>{$_modx->resource.pagetitle}</h1>
            {/if}
            <div class="text-content" itemprop="mainContentOfPage">
                {$_modx->resource.content}
            </div>
        </div>
    </div>

</div>

{/block}