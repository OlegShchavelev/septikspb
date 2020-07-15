<!DOCTYPE html>
<html>
{include 'dsmc_head'}
<body class="template{'template' | resource} page{'id' | resource} body_mark2" itemscope itemtype="http://schema.org/WebPage">
{include 'dsmc_header'}
{include 'breadcrumb'}

<div class="container">
    <h1>{'pagetitle' | resource}</h1>
    {'content' | resource}
</div>

{'!mvtForms2' | snippet : ['form'=>'magnet']}

{include 'footer'}
{include 'scripts'}
</body>
</html>