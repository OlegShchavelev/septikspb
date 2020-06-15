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
                <a href="#" data-toggle="tooltip" data-placement="bottom" title="A much longer tooltip to demonstrate the max-width of the Bootstrap tooltip.">Large tooltip</a>
            </li>
            <li class="list-inline-item">
                <a href="#" data-toggle="tooltip" data-placement="left" title="The last tip!">Last tooltip</a>
            </li>
        </ul>
    </div>
</div>

<div class="order_call_form_wrap magnit-forms mt-5">
    <div class="container">
        <div class="row">
            <div class="col-xl-4 bg-success-2 faid py-5">
                <div class="icon-box relative">
                    <div class="d-flex align-items-center">
                        <i class="fas fa-headset display-4 text-white"></i>
                        <div class="pl-4"><span class="h4 text-white box-title mb-1 d-block">Остались вопросы</span>
                            <p class="text-white d-block">наш менеджер перезвонит вам в течении 30 минут </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-8 py-5 pl-xl-5">
                {'!mvtForms2' | snippet : ['form'=>'magnet']}
            </div>

        </div>
    </div>
</div><!--/order_call_form_wrap-->



{include 'footer'}
{include 'scripts'}

{'!ya' | snippet}
</body>
</html>