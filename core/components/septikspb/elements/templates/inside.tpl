{extends 'template:Базовый шаблон'}
{block 'content'}

<div class="container" itemscope itemtype="http://schema.org/WebPage">
    <div class="row">
        <div class="col-md-3 col-sm-12 col-xs-12">
            {include 'sidebar'}
        </div>
        <div class="col-md-9 col-sm-12 col-xs-12" itemprop="mainContentOfPage">

            {if $_modx->resource.pagetitle_full != ''}
                <h1>{$_modx->resource.pagetitle_full}</h1>
            {else}
                <h1>{$_modx->resource.pagetitle}</h1>
            {/if}
            <div class="text-content">
                {'content' | resource}
                {if $_modx->user.id > 0}
                    {'!ms2Gallery' | snippet : [
                    'resources' => 575,
                    'tags' => 'наша работа',
                    'tpl' => 'dsmc.ms2gallery.work.content'
                    ]}
                {/if}
            </div>
        </div>
    </div>

</div>

{/block}