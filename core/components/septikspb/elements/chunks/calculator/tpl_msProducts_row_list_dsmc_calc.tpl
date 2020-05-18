{set $opt = '!msProductOptions' | snippet : [
'tpl' => 'dsmc.tpl.list.cart.product',
'groups' => 'Возможности',
'product' => $id
]}

<div class="dsmc_calc_item my-3 col-12{($ms_price_key != 0 && $opt != '') ? ' product-overlay' : ''}"
     data-dsmc_calc_productid="{$id}"
     data_calc_productprice="{$price}"
     data_calc_earthwork="{$calc_earthwork[0]}"
     data_calc_puskonaladka="{$calc_puskonaladka[0]}">
    <div class="card product list">
        <div class="row">
            <div class="col-12 col-xl-3 px-5 p-xl-0 d-flex card-img align-items-center justify-content-center bd-highlight">
                <a href="{$id | url}">
                    <img src="{$image | phpthumbon: 'w=300&h=300&bg=fff&q=61'}" class="card-img-top p-3" alt="{$pagetitle}">
                </a>
            </div>
            <div class="col-12 col-xl-9">
                <div class="card-body pl-xl-0 position-relative h-100">
                    {if $ms_prod_bonus ?}
                        <div class="flags">
                            <ul class="list-group list-box icon-list-box radius-box list-group-horizontal mb-3">
                                {foreach $ms_prod_bonus as $item}
                                    {switch $item}
                                    {case 'Бесплатный выезд инженера'}
                                    {set $icon = 'fas fa-hard-hat'}
                                    {set $color = 'green'}
                                    {case 'Аварийная сигнализация в подарок'}
                                    {set $icon = 'fas fa-exclamation-triangle'}
                                    {set $color = 'red'}
                                    {case 'Бесплатная доставка'}
                                    {set $icon = 'fas fa-boxes'}
                                    {set $color = 'blue'}
                                    {case 'Гарантия производителя'}
                                    {set $icon = 'fas fa-id-badge'}
                                    {set $color = 'blue'}
                                    {/switch}
                                    <li class="item">
                                        <i class="{$icon} {$color}"></i>
                                    </li>
                                {/foreach}
                            </ul>
                        </div>
                    {/if}
                    <a href="{$id | url}" class="cart-title">
                        {$pagetitle}
                    </a>
                    <div class="card-text position-relative">
                        <div class="d-flex body-price{($ms_price_key != 0 && $opt != '') ? ' position-absolute' : ''}">
                            {if $ms_price_key != 0}
                                <div class="good-price">
                                    <p class="label green">
                                        Цена «под ключ»
                                    </p>
                                    <div class="list_line pl-2 mt-2">
                                        <p class="price">
                                            {$ms_price_key | price} {'ms2_frontend_currency' | lexicon}
                                        </p>
                                        <div class="service mt-1">
                                            <ul>
                                                <li>Оборудование</li>
                                                <li>Доставка</li>
                                                <li>Монтаж</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            {/if}
                            <div class="equipment-price">
                                <p class="label blue">
                                    {$ms_price_key != 0 ? 'Цена оборудования' : 'Цена'}
                                </p>
                                <div class="mt-2 d-flex flex-column flex-lg-row">
                                    <p class="price">
                                        {$price} {'ms2_frontend_currency' | lexicon}
                                    </p>
                                    {if $old_price != 0}
                                        <p class="old_price"><span class="badge badge-danger ml-0 ml-lg-1 py-1 px-2"><del>{$old_price} {'ms2_frontend_currency' | lexicon}</del></span></p>
                                    {/if}
                                </div>
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
                    <div class="d-flex justify-content-end position-absolute btn-more">
                        <a class="btn btn-success btn-radius btn-hover-primary" href="{$id | url}"><i class="fas fa-angle-right"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>