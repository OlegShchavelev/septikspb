<html>
{include 'dsmc_head'}
<body class="template{'template' | resource} page{'id' | resource} body_mark2" itemscope itemtype="http://schema.org/WebPage">
{include 'dsmc_header'}

{include 'breadcrumb'}
{include 'landing_page'}


<div class="container" itemscope itemtype="http://schema.org/WebPage">
    <div class="row">

        <div class="col-md-12 col-sm-12 col-xs-12" style="background: #fff;">

            <div class="real_content" itemprop="mainContentOfPage">
                {'content' | resource}
            </div>
        </div>
    </div>
</div>
<div class="clear:both;"></div>
{include 'footer'}
{include 'scripts'}
</body>
</html>