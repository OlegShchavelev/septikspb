<!DOCTYPE html>
<html>
{include 'dsmc_head'}
<body>
{include 'dsmc_header'}
{include 'breadcrumb'}
<div class="container">
    <h1>{'pagetitle' | resource}</h1>
    {'content' | resource}
    <!-- Bootstrap 4 -->
    <body>
    <div class="bs-example">
        <ul class="list-inline">
            <li class="list-inline-item">
                <a href="#" data-toggle="tooltip" data-placement="top" title="Default tooltip">Tooltip</a>
            </li>
            <li class="list-inline-item">
                <a href="#" data-toggle="tooltip" data-placement="right" title="Another tooltip">Another tooltip</a>
            </li>
            <li class="list-inline-item">
                <a href="#" data-toggle="tooltip" data-placement="bottom"
                   title="A much longer tooltip to demonstrate the max-width of the Bootstrap tooltip.">Large
                    tooltip</a>
            </li>
            <li class="list-inline-item">
                <a href="#" data-toggle="tooltip" data-placement="left" title="The last tip!">Last tooltip</a>
            </li>
        </ul>
    </div>
</div>

{'!mvtForms2' | snippet : ['form'=>'magnet']}


{include 'footer'}
{include 'scripts'}

{'!ya' | snippet}
</body>
</html>