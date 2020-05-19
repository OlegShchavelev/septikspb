<!DOCTYPE html>
<html>
{include 'dsmc_head'}
<body class="template{'template' | resource} page{'id' | resource} body_mark2" itemscope itemtype="http://schema.org/WebPage">
{include 'dsmc_header'}
{include 'breadcrumb'}

{'!msPCS' | snippet : [
'parents' => 657,
'up' => 1,
'mode' => 2,
'snippet' => 'mFilter2'
'paginator' => 'pdoPage',
'element' => 'msProducts',
'depth' => 1,
'limit' => 18,
'filters' => '
msoption|ms_kol_person,
msoption|ms_prod_waterlevel,
msoption|ms_vanni:boolean,
msoption|ms_prod_grunt,
msoption|ms_drainage_system
',
'aliases' => '
msoption|ms_kol_person == calc_kol_person,
msoption|ms_prod_waterlevel == calc_prod_waterlevel,
msoption|ms_vanni == calc_ms_vanni,
msoption|ms_prod_grunt == calc_prod_grunt,
msoption|ms_drainage_system == calc_drainage_system
',
'filterOptions' => '{"autoLoad":0}'
'sortby' => 'price',
'sortdir' => 'ASC',
'suggestions' => 1,
'toPlaceholders' => 'dsmc.',
'tpl' => 'tpl.msProducts.row.list.dsmc.calc',
]}

<div class="container main" id="mse2_mfilter">
    <h1>{'pagetitle' | resource}</h1>

    <a href="{'659' | url}" class="btn btn-success btn-lg mb-4 mt-2">Вернуться к шагу 1</a>

    <p>
        Данный расчет стоимости является предварительным, для правильного подбора оборудования и расчета окончательной сметы, необходим выезд нашего инженера на объект. Это бесплатная услуга. Свяжитесь с нами или оставьте запрос на сайте.
    </p>

    <h4 class="mt-3">Кликните на вариант и заполните заявку</h4>


    <div id="mse2_results">
        <div class="row card-select" id="dsmc_calc">
            [[+dsmc.results]]
        </div>
    </div>

    {'!mvtForms2' | snippet : ['form'=>'calc']}

    {'content' | resource}
</div>

<div class="order_call_form_wrap magnit-forms mt-5">
    <div class="container">
    </div>
</div><!--/order_call_form_wrap-->
{include 'footer'}
{include 'scripts'}
</body>
</html>