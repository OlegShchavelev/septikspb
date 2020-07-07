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
msoption|ms_drainage_system,
msoption|calc_vanni,
msoption|ms_energy,
msoption|ms_prod_stoki
',
'aliases' => '
msoption|ms_kol_person == calc_kol_person,
msoption|ms_prod_waterlevel == calc_prod_waterlevel,
msoption|ms_vanni == calc_ms_vanni,
msoption|ms_prod_grunt == calc_prod_grunt,
msoption|ms_drainage_system == calc_drainage_system,
msoption|calc_vanni == calc_vanni
msoption|ms_energy == calc_energy,
msoption|ms_prod_stoki == calc_prod_stoki
',
'filterOptions' => '{"autoLoad":0}'
'sortby' => 'price',
'sortdir' => 'ASC',
'suggestions' => 1,
'toPlaceholders' => 'dsmc.',
'tpl' => 'tpl.msProducts.row.grid.dsmc.calc',
]}

{set $get = $.get}
{unset $get[q]}

{foreach $get as $key => $value index=$index}
    {if $value ?}
    {set $GET[$index] = $key ~ '=' ~ $value}
    {/if}
{/foreach}


<div class="container main " id="mse2_mfilter">
    <h1>{'pagetitle' | resource}</h1>

    <a href="{'659' | url}?{$GET | join : '&'}" class="btn btn-success btn-lg mb-4 mt-2 text-decoration-none">Назад к выбору параметров</a>

    <p>
        Наш калькулятор подобрал для вас список оборудования на основе указанных вами параметров, которые вы можете увидеть ниже. Вам осталось только выбрать подходящую систему ЛОС и указать расположение вашего участка. Вы всегда можете вернуться к первому шагу и изменить исходные данные для подбора оборудования.
    </p>

    <h4 class="mt-3">Выбранные параметры</h4>

    <div id="mse2_selected_wrapper">
        <div>
            {if $.get.calc_kol_person ?}
                <span class="py-2 px-3 my-1 d-inline-block bg-light">Количество людей:<span class="font-weight-semibold ml-2">{$.get.calc_kol_person}</span></span>
            {/if}
        </div>
        {if $.get.calc_prod_waterlevel ?}
        <span class="py-2 px-3 my-1 d-inline-block bg-light">Уровень воды:<span class="font-weight-semibold ml-2">{$.get.calc_prod_waterlevel}</span></span>
        {/if}
        {if $.get.calc_drainage_system ?}
        <span class="py-2 px-3 my-1 d-inline-block bg-light">Водоотведение:<span class="font-weight-semibold ml-2">{$.get.calc_drainage_system}</span></span>
        {/if}
        {if $.get.calc_prod_grunt ?}
        <span class="py-2 px-3 my-1 d-inline-block bg-light">Тип грунта:<span class="font-weight-semibold ml-2">{$.get.calc_prod_grunt}</span></span>
        {/if}
        {if $.get.calc_vanni ?}
            <span class="py-2 px-3 my-1 d-inline-block bg-light">Наличие ванны:<span class="font-weight-semibold ml-2">{$.get.calc_vanni}</span></span>
        {/if}
        {if $.get.calc_energy ?}
            <span class="py-2 px-3 my-1 d-inline-block bg-light">Энергонезависимость:<span class="font-weight-semibold ml-2">{$.get.calc_energy}</span></span>
        {/if}
        {if $.get.calc_prod_stoki ?}
            <span class="py-2 px-3 my-1 d-inline-block bg-light">Необходимость откачки:<span class="font-weight-semibold ml-2">{$.get.calc_prod_stoki}</span></span>
        {/if}
        {if $.get.calc_input_tube ?}
        <span class="py-2 px-3 my-1 d-inline-block bg-light">Количество труб:<span class="font-weight-semibold ml-2">{$.get.calc_input_tube} м</span></span>
        {/if}
    </div>

    <div id="mse2_results">
        <div class="row card-select justify-content-center justify-content-md-start" id="dsmc_calc">
            {'dsmc.results' | placeholder != 'Подходящих результатов не найдено.' ? ('dsmc.results' | placeholder) : '
            <div class="container">
            <div class="alert alert-primary">
                К сожелению, подходящих результатов не найдено. Вы можете <a href="{'659' | url}?{$GET | join : '&'}">уточнить</a> параметры вашего поиска или <b>отправить</b> запрос нашим специалистам для подбора оборудования</b>
            </div>
            </div>
            ' ~
            '!mvtForms2' | snippet : ['form'=>'no_results_found']
            }
        </div>
    </div>

    <div id="dsmc-calc-order-section">
    {'!mvtForms2' | snippet : ['form'=>'calc']}
    </div>

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