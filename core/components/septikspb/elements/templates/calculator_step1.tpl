<!DOCTYPE html>
<html>
{include 'dsmc_head'}
{include 'dsmc_header'}
{include 'breadcrumb'}

{'!mFilter2' | snippet : [
'parents' => 657,
'paginator' => 'pdoPage',
'element' => 'msProducts',
'depth' => 1,
'limit' => 18,
'sortby' => 'price',
'filters' => '
    msoption|ms_kol_person,
    msoption|ms_prod_waterlevel,
    msoption|ms_stock_vanni,
    msoption|ms_prod_grunt,
    msoption|ms_drainage_system,
    msoption|ms_energy,
    msoption|ms_prod_stoki
'
'aliases' => '
    msoption|ms_kol_person == calc_kol_person,
    msoption|ms_prod_waterlevel == calc_prod_waterlevel,
    msoption|ms_vanni == calc_ms_vanni,
    msoption|ms_prod_grunt == calc_prod_grunt,
    msoption|ms_drainage_system == calc_drainage_system,
    msoption|ms_stock_vanni == calc_stock_vanni,
    msoption|ms_energy == calc_energy,
    msoption|ms_prod_stoki == calc_prod_stoki
',
'sortdir' => 'ASC',
'suggestions' => 0,
'toPlaceholders' => 'dsmc.',
'filterOptions' => '{"autoLoad":0}'
'tpl' => 'tpl.msProducts.row.list.dsmc',
'tplFilter.outer.calc_kol_person' => 'dsmc.tpl.mFilter2.filter.outer.ms_kol_person',
'tplFilter.row.calc_kol_person' => 'dsmc.tpl.mFilter2.filter.ms_kol_person',
'tplFilter.outer.default' => 'dsmc.tpl.mFilter2.filter.outer.calculator',
'tplFilter.row.default' => 'dsmc.tpl.mFilter2.filter.checkbox',
]}

<div class="container main">
    <h1>{'pagetitle' | resource}</h1>
    <p>
        Перед вами калькулятор, который позволит в два простых шага подобрать и спроектировать идеальную автономную канализацию для вашего загородного участка. Мы постарались учесть все наиболее важные и обязательные параметры, которые влияют не только на выбор оборудования, но и формируют итоговую смету на монтаж. Важно понимать, что вы получите предварительную смету. Итоговая сумма может оказаться, как больше, так и меньше. Сделать точный расчет может специалист СептикСервис у вас на участке.
    </p>

    <h4 class="mt-3">Укажите подходящие параметры</h4>

    <div class="filters calculators px-5 pb-3 pt-3" id="mse2_mfilter">
        <form action="{'660' | url}" method="post" id="mse2_filters">
            {if 'dsmc.filters' | placeholder != 'Нечего фильтровать'}
                <div class="row">
                    {'dsmc.filters' | placeholder}
                    <fieldset class="col-lg-4">
                        <h4 class="filter_title">Метраж прокладки труб
                            <a class="d-inline-block" tabindex="0" data-toggle="tooltip" data-placement="bottom" title="Вы можете указать предположительную длину прокладки труб по участку. В смете будут учтены материалы и земельные работы. Данный параметр необязательный. Точный метраж труб сможет посчитать специалист на месте. Минимальный метраж - 2 метра.">
                                <i class="far fa-question-circle"></i>
                            </a>
                        </h4>
                        <div class="row">
                            <div class="col-5">
                                <div class="form-group mb-0">
                                    <input type="number" id="email" name="calc_input_tube" value="2" class="form-control calc_input_tube">
                                </div>
                            </div>
                            <div class="col-7 d-flex align-items-center">
                                м
                            </div>
                        </div>
                    </fieldset>
                </div>
                <div class="py-4 text-center">
                    <button type="submit" class="btn btn-success btn-lg">Подобрать решение</button>
                </div>
            {/if}
        </form>
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