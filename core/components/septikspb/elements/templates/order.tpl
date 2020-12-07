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
            <div class="real_content" itemprop="mainContentOfPage">
                {'!msCart' | snippet : [
                'tpl' => 'tpl.msCart.dsmc'
                ]}
                {'!msOrder' | snippet : [
                'tpl' => 'tpl.msOrder.dsmc'
                ]}

                {'!msGetOrder' | snippet : [
                'tpl' => 'tpl.msGetOrder.dsmc'
                ]}
            </div>
        </div>
    </div>
</div>

{/block}
{block 'form_button'}
{/block}