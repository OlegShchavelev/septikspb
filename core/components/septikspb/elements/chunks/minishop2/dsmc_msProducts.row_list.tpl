{set $opt = '!msProductOptions' | snippet : [
'tpl' => 'dsmc.tpl.list.cart.product',
'groups' => 'Возможности',
'product' => $id
]}

<div class="my-3 col-12 {($ms_price_key != 0 && $opt != '') ? ' product-overlay' : ''}">
    <div class="card product list">
        <div class="row">
            <div class="col-12 col-xl-3 px-5 p-xl-0 d-flex card-img align-items-center justify-content-center bd-highlight">
                <a href="{$id | url}">
                    <img src="{$image | phpthumbon: 'w=300&h=300&bg=fff&q=61'}" class="card-img-top p-3"
                         alt="{$pagetitle}">
                </a>
            </div>
            <div class="col-12 col-xl-9">
                <div class="card-body pl-xl-0 position-relative h-100">
                    <div class="card-row row">
                        <div class="col-lg-9">
                            <a href="{$id | url}" class="cart-title ml-0">
                                {$longtitle ?: $pagetitle}
                            </a>

                            <div class="flags my-2">
                                {foreach $ms_promo as $item}

                                    {switch $item}
                                    {case 'Акция'}
                                    {set $bg = 'bg-primary'}
                                    {case 'Хит продаж'}
                                    {set $bg = 'bg-danger'}
                                    {case 'Советуем'}
                                    {set $bg = 'bg-success'}
                                    {/switch}
                                    <span class="badge {$bg} text-white">{$item}</span>
                                {/foreach}
                            </div>

                            <div class="card-text position-relative">
                                <div class="d-flex w-100 body-price{($ms_price_key != 0 && $opt != '') ? ' position-absolute' : ''}">
                                    {if $ms_price_key != 0}
                                        <div class="good-price col-6 col-lg-4 pl-0">
                                            <p class="label green">
                                                Цена «под ключ»
                                            </p>
                                            <div class="list_line pl-2 mt-2">
                                                <p class="price success">
                                                    {$ms_price_key | price} {'ms2_frontend_currency' | lexicon}
                                                </p>

                                                <div class="service mt-1">
                                                    <ul>
                                                        {foreach $ms_prod_bonus as $item}
                                                            <li>{$item}</li>
                                                        {/foreach}
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    {/if}
                                    <div class="equipment-price col-6 col-lg-9 px-0">
                                        <p class="label blue">
                                            {$ms_price_key != 0 ? 'Цена оборудования' : 'Цена'}
                                        </p>
                                        {if $ms_price_key != 0}
                                            <div class="mt-2 d-flex justify-content-between">
                                                <p class="price">
                                                    {$price} {'ms2_frontend_currency' | lexicon}
                                                </p>
                                                {if $old_price != 0}
                                                    <p class="old_price">
                                                        <span class="badge badge-danger ml-lg-1 py-1 px-2"><del>{$old_price} {'ms2_frontend_currency' | lexicon}</del></span>
                                                    </p>
                                                {/if}
                                            </div>
                                        {else}
                                            <div class="list_line pl-2 mt-2">
                                                <div class="service mt-1">
                                                    <p class="price primary">
                                                        {$price} {'ms2_frontend_currency' | lexicon}
                                                    </p>
                                                    <ul class="px-0">
                                                        {foreach $main_benefits as $item}
                                                            <li>{$item}</li>
                                                        {/foreach}
                                                    </ul>
                                                </div>
                                            </div>
                                        {/if}
                                    </div>
                                </div>
                                {if $ms_prod_bonus ?}
                                    <div class="overlay body-overlay position-relative">
                                        <ul class="list-group list-box icon-list-box d-flex flex-row flex-wrap ">
                                            {$opt}
                                        </ul>
                                    </div>
                                {/if}
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <ul class="list-inline d-flex ml-3 ml-lg-0 mb-2 align-items-center mr-lg-0 justify-content-start justify-content-lg-end">
                                <li class="list-inline-item mr-3">
                                    {if $available == 1}
                                        <span class="text-success font-weight-normal stock position-relative text-gray-600">В наличии</span>
                                    {else}
                                        <span class="stock not-stock font-weight-normal position-relative">Под заказ</span>
                                    {/if}
                                </li>
                                <li class="list-inline-item">
                                    <a href="#" data-click data-data-list="default" class="msfavorites"
                                       data-data-type="resource"
                                       data-data-pagetitle="{$pagetitle}" data-data-key="{$id}">
                                        <svg class="svg-icon svg-icon-sm svg-icon-gray-600">
                                            <use xlink:href="#icon-favorite"></use>
                                        </svg>
                                    </a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="izbrannoe/">
                                        <svg class="svg-icon svg-icon-sm svg-icon-gray-600">
                                            <use xlink:href="#icon-comparison"></use>
                                        </svg>
                                    </a>
                                </li>
                            </ul>
                            <div class="d-flex justify-content-end position-absolute btn-more">
                                <a class="btn btn-success btn-radius btn-hover-primary" href="{$id | url}"><i
                                            class="fas fa-angle-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>