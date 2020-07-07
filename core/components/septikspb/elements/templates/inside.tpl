<!DOCTYPE html>
<html>
{include 'dsmc_head'}
<body class="template{'template' | resource} page{'id' | resource} body_mark2" itemscope itemtype="http://schema.org/WebPage">
{include 'dsmc_header'}
{include 'breadcrumb'}

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
                {$_modx->resource.content}
            </div>
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
</html>