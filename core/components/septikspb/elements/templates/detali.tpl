{extends 'template:Базовый шаблон'}
{block 'content'}
<div class="cart" itemscope itemtype="http://schema.org/Product">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-{'ms_installment' | resource == 1 ? '8' : '12'}">
                {if 'longtitle' | resource ?}
                    <h1 class="mb-0" itemprop="name">{'longtitle' | resource}</h1>
                {else}
                    <h1 class="mb-0" itemprop="name">{'pagetitle' | resource}</h1>
                {/if}
            </div>
            {if 'ms_installment' | resource == 1}
                <div class="col-lg-4">
                    <div class="card border-0">
                        <div class="d-flex align-items-center justify-content-left  justify-content-md-end mt-4 mb-2 my-md-0">
                            <div class="mr-3">
                                <svg class="svg-icon svg-icon-lg svg-icon-primary">
                                    <use xlink:href="#icon-finance"></use>
                                </svg>
                            </div>
                            <div class="font-weight-semibold">Рассрочка <a href="{'587' | url}" class="text-decoration-none font-weight-bold">0% на все</a>
                            </div>
                        </div>
                    </div>
                </div>
            {/if}
        </div>
        <div class="row pt-4 clear" itemprop="offers" itemscope itemtype="http://schema.org/Offer">
            <div class="col-12 col-xl-4">
                <div class="gallery card-gallery">
                    <div class="d-flex flex-column justify-content-between h-100 loader">
                        {if 'ms_installment' | resource == 1}
                            <div class="badge badge-warning barge-radius barge-installment">
                                <span class="font-weight-normal mt-2 mb-1">Рассрочка</span>
                                <span class="h6 font-weight-semibold">0 0 3</span>
                            </div>
                        {/if}
                        {'!msGallery' | snippet : [
                        'tpl' => 'dsmc.tpl.msGallery.new'
                        ]}
                    </div>
                    <div class="d-flex position-absolute spinner">
                        <div class="spinner-border text-success" role="status">
                            <span class="sr-only">Loading...</span>
                        </div>
                    </div>
                </div>
            </div>

            {set $capabilities = '!msProductOptions' | snippet : [
            'tpl' => 'dsmc.tpl.list.cart',
            'groups' => 'Возможности'
            ]}

            {set $bonus = '!msProductOptions' | snippet : [
            'tpl' => 'dsmc.tpl.bonus.cart',
            'onlyOptions' => 'ms_prod_bonus'
            ]}

            {set $tag = '!msProductOptions' | snippet : [
            'tpl' => 'dsmc.tpl.tag.cart',
            'onlyOptions' => 'main_benefits'
            ]}

            {set $tagtop = '!msProductOptions' | snippet : [
            'tpl' => 'dsmc.tpl.tag.cart.top',
            'onlyOptions' => 'main_benefits'
            ]}


            <div class="col-12 col-xl-4 my-5 my-xl-0">

                <div class="t21_prod_info_props">
                    {if ($capabilities || $bonus) ?}
                        <div class="text-lg text-primary font-weight-bold mb-2">Возможности:</div>
                        <ul class="list-group list-box icon-list-box">
                            {$capabilities}
                        </ul>
                        {if $capabilities ?}
                            <hr class="mt-4">
                        {/if}
                        <ul class="list-group list-box icon-list-box radius-box my-3 ">
                            {$bonus}
                        </ul>
                    {else}
                        {if $tagtop ?}
                        <div class="text-lg text-primary font-weight-bold">Преимущества:</div>
                        <ul class="list-group list-box icon-list-box radius-box my-3 ">
                            {$tagtop}
                        </ul>
                        {/if}
                    {/if}
                </div>
            </div>
            <div class="col-12 col-xl-4 pl-0 pl-xl-5">
                <div class="card border-gray-200">
                    <div class="card-header bg-transparent border-bottom border-gray-200 text-center">
                    {if 'available' | resource == 1}
                        <span class="text-success font-weight-bold stock position-relative">Товар в наличии</span><link itemprop="availability" href="http://schema.org/InStock">
                        {else}
                        <span class="stock not-stock">Под заказ от 1 до 5 дней</span>
                        {/if}
                    </div>
                    <div class="card-body">
                    <div class="text-primary font-weight-bold mb-2">Цена оборудования</div>
                    <div class="d-flex justify-content-between">
                        <div class="text-xl text-dark font-weight-bold"
                             itemprop="price">{$_pls['price']} {'ms2_frontend_currency' | lexicon}</div><span
                                    itemprop="priceCurrency" style="display:none;">RUB</span>
                        {if $_pls['old_price'] != 0}
                            <div class="text-md text-danger font-weight-bold"><del>{$_pls['old_price']} {'ms2_frontend_currency' | lexicon}</del></div>
                        {/if}
                    </div>
                    <form method="post" class="ms2_form my-3">
                        <button class="btn btn-primary btn-block btn-lg btn-icon-label" type="submit" name="ms2_action"
                                value="cart/add">
                            <span class="btn-inner-icon">
                                <svg class="svg-icon">
                                    <use xlink:href="#icon-cart"></use>
                                </svg>
                            </span>
                            <span class="btn-inner-text">
                            В корзину
                            </span>

                        </button>
                        <input type="hidden" name="id" value="{'id' | resource}">
                        <input type="hidden" name="count" value="1">
                        <input type="hidden" name="options" value="[]">
                    </form>

                    {if 'ms_price_key' | resource != 0}
                        <div class="font-weight-bolder text-success">Цена под ключ</div>
                        <div class="t21_product_maininfo_price2_wr d-flex align-items-center">
                            <div class="text-xl text-dark font-weight-bold">{'ms_price_key' | resource | price} {'ms2_frontend_currency' | lexicon}</div>
                            <a href="javascript:return" data-toggle="popover" title="Условия монтажа"
                               data-content="{'price_key' | option}" data-html="true" class="ml-3 btn btn-light text-dark btn-icon-only rounded-circle"><i class="fas fa-question"></i></a>
                        </div>
                        <a data-fancybox data-src="#mounting-form" href="javascript:;"
                           class="btn btn-success btn-success btn-block btn-lg btn-icon-label my-3">
                            <span class="btn-inner-icon">
                               <i class="fas fa-equals"></i>
                            </span>
                            <span class="btn-inner-text">
                            Заказать
                            </span>
                        </a>
                    {/if}
                    </div>
                    <div class="card-footer text-center bg-transparent border-top border-gray-200">
                    <a data-fancybox data-src="#oneclick-form" href="javascript:;"
                       class="one_click_buy"><span class="link-underline">Купить в 1 клик</span></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="my-4">

            {if ($tag && $capabilities || $bonus) ?}
                <span class="btn btn-outline-success btn-label mr-3 my-3">Преимущества</span>
                {$tag}
            {/if}
        </div>
    </div>


    {'!seoTabs' | snippet: [
    'tplWrapper' => 'tpl.seoTabsWrapper.dsmc',
    'tplTab' => 'tpl.seoTabsTab.dsmc',
    'tpl' => 'tpl.seoTabs.dsmc'
    'ajax' => 1
    ]}

    {'!msProductsSection' | snippet : [
    'snippet' => 'ms2Gallery'
    'tags' => 'дипломы и сертификаты',
    'parents' => 0,
    'resources' => 'parent' | resource,
    'tpl' => 'dsmc.ms2gallery.certifications',
    'wrapperPlaceholders' => [
    'title' => 'Cертификаты производителя' ~~ '<span class="text-success">' ~ ('vendor.name' | resource) ~ '</span>'
    ],
    ]}

    {'!msProductsSection' | snippet : [
    'includeOriginal' => 1,
    'msgr' => 1,
    'parents' => 228,
    'includeTVs' => 'tv_portfolio_product',
    'where' => [
    'tv_portfolio_product:=' => ('id' | resource)
    ],
    'wrapperPlaceholders' => [
    'title' => 'Выполненные работы по установке' ~~ '<span class="text-success">' ~('pagetitle' | resource) ~ '</span>',
    'section_class' => 'bg-light'
    ],
    'limit' => 8,
    'tplWrapper' => 'wrapper.showcase.dsmc',
    'tpl' => 'dsmc.card.portfolio',
    'wrapIfEmpty' => 0
    ]}


    {if $_modx->resource.modifikacii.0 ?}
            {'!msProductsSection' | snippet : [
            'depth' => 0,
            'limit' => 3,
            'wrapperPlaceholders' => [
            'title' => 'Модификации',
            'section_class' => 'bg-white'
            ],
            'parents' => 0,
            'tpl' => 'tpl.msProducts.row.list.dsmc',
            'resources' => $_modx->resource.modifikacii.0,
            'sortby' => 'RAND()',
            'tplWrapper' => 'wrapper.showcase.dsmc',
            'wrapIfEmpty' => 0,
            'title' => 'Похожие товары'
            ]}
    {/if}

    <section class="bg-light py-6">
        <div class="container">
            <div class="row align-items-center justify-content-center">
                <div class="col-12 col-xl-4 text-center text-xl-left">
                    <h2><span class="badge badge-success text-white">Акции</span><br>Септик Cервис</h2>
                </div>
                <div class="col-10 col-xl-8 text-center text-xl-left">
                    <div class="row">
                        {'!pdoResources' | snippet : [
                        'tpl' => 'dsmc.row.stock_card.cart',
                        'parents' => 584,
                        'resources' => $_modx->resource.idbanner,
                        'limit' => 2,
                        'includeTVs' => 'image',
                        'tvPrefix' => ''
                        ]}
                    </div>
                </div>
            </div>
        </div>
    </section>

    {if $_modx->resource.ms_pohojie.0 ?}
            {'!msProductsSection' | snippet : [
            'depth' => 0,
            'wrapperPlaceholders' => [
            'title' => 'Аналоги станции ' ~ 'pagetitle' | resource
            ],
            'limit' => 4,
            'parents' => 0,
            'resources' => $_modx->resource.ms_pohojie.0,
            'sortby' => 'RAND()',
            'tpl' => 'tpl.msProducts.row.grid.dsmc',
            'tplWrapper' => 'wrapper.showcase.dsmc',
            'wrapIfEmpty' => 0,
            ]}
    {/if}



    {'!mvtForms2' | snippet : ['form'=>'magnet']}

    {set $addToViewed = '!addToViewed' | snippet}

        {'msProductsSection' | snippet : [
        'depth' => 0,
        'wrapperPlaceholders' => [
        'title' => 'Вы смотрели'
        'item' => 'item',
        'section_class' => 'bg-white'
        ],
        'limit' => 4,
        'parents' => 0,
        'showUnpublished' => 1,
        'resources' => $addToViewed
        'tpl' => 'tpl.msProducts.row.grid.dsmc',
        'tplWrapper' => 'wrapper.showcase.dsmc',
        'wrapIfEmpty' => 0
        ]}


    <div id="mounting-form" style="display:none">
        <div class="row">
            <div class="col-lg-6 bg-success-2 p-5">
                {'!mvtForms2' | snippet : ['form'=>'mounting']}
            </div>
            <div class="col-lg-6 p-5 d-flex flex-column justify-content-center">
                <div class="d-flex align-items-center">
                    <div class="mr-5">
                        <img src="img/formphone.png">
                    </div>
                    <div>
                        <h3 class="h3 text-uppercase text-primary">Заказ <br> на монтаж</h3>
                    </div>
                </div>
                <p class="mt-4">По всем интересующим вопросам отправьте нам сообщение и мы свяжемся с Вами</p>
            </div>

        </div>
    </div>
    <div id="oneclick-form" style="display:none">
        <div class="row">
            <div class="col-lg-6 bg-primary-2 p-5">
                {'!mvtForms2' | snippet : ['form'=>'oneclick']}
            </div>
            <div class="col-lg-6 p-5 d-flex flex-column justify-content-center">
                <div class="d-flex align-items-center">
                    <div class="mr-5">
                        <img src="img/formphone.png">
                    </div>
                    <div>
                        <h3 class="h3 text-uppercase text-primary">Купить <br>в 1 клик</h3>
                    </div>
                </div>
                <p class="mt-4">По всем интересующим вопросам отправьте нам сообщение и мы свяжемся с Вами</p>
            </div>

        </div>
    </div>

</div>
</div>

{/block}
{block 'form_button'}
{/block}