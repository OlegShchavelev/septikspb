<div class="col-2 col-xl-12 d-flex justify-content-center align-items-center pt-xl-4">
    <a class="d-block d-xl-none" data-toggle="collapse" href="#collapseSearch" role="button" aria-expanded="false"
       aria-controls="collapseSearch">
        <svg class="svg-icon">
            <use xlink:href="#icon-search"></use>
        </svg>
    </a>
    <div class="form-group input-group search-toggler collapse d-lg-block mb-0" id="collapseSearch">
        <form action="{$pageId | url}" method="get" id="mse2_form" class="msearch2 mb-0">
        <input class="form-control form-control-lg form-control-pills form-control-light" type="text"
               placeholder="Поиск" name="{$queryVar}" value="{$mse2_query}" autocomplete="off"> </form>
    </div>
</div>