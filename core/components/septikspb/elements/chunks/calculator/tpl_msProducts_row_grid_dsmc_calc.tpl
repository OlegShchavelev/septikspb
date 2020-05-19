{set $opt = '!msProductOptions' | snippet : [
'tpl' => 'dsmc.tpl.row.cart.product',
'groups' => 'Возможности',
'product' => $id
]}

<div class="dsmc_calc_item col-md-6 col-xl-3 my-3 row-card{($ms_price_key != 0 && $opt != '') ? ' product-overlay' : ''}"
     data-dsmc_calc_productid="{$id}"
     data-calc_productprice="{$price | preg_replace:'/[^0-9]|/': ''}"
     data-calc_earthwork="{$calc_earthwork.0 ?: '0'}"
     data-calc_puskonaladka="{$calc_puskonaladka.0 | preg_replace:'/[^0-9]|/': '' ?: '0'}">
    <div class="card product h-100 {$idx == 1 ? ' active' : ''}">
        <div class="flags px-3 pt-3">
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
        <div class="d-flex card-img align-items-center justify-content-center bd-highlight">
            <a href="{$id | url}">
                <img src="{$image | phpthumbon: 'w=300&h=300&bg=fff&q=61'}" class="card-img-top p-3" alt="{$pagetitle}">
            </a>
        </div>
        <div class="card-body position-relative d-flex flex-column justify-content-between">
            <div class="card-text d-flex flex-column justify-content-center h-100">
                <a href="{$id | url}" class="cart-title">
                    {$pagetitle}
                </a>
            </div>
            <div class="card-text position-relative">
                <div class="d-flex flex-column justify-content-between body-price">
                    <div class="equipment-price mt-2">
                        <p class="label blue">
                            {($ms_price_key != 0 && $opt != '') != 0 ? 'Цена оборудования' : 'Цена'}
                        </p>
                        <div class="mt-2 d-flex align-items-center">
                            <p class="price">
                                {$price} {'ms2_frontend_currency' | lexicon}
                            </p>
                            {if $old_price != 0}
                                <p class="old_price"><span class="badge badge-danger ml-1 align-items-center px-2 py-1"><del>{$old_price} {'ms2_frontend_currency' | lexicon}</del></span></p>
                            {/if}
                        </div>
                    </div>
                </div>
                <div class="overlay body-overlay position-absolute">
                    <ul class="list-group list-box icon-list-box d-flex flex-row flex-wrap ">
                        {if ($opt && $ms_price_key != 0) ?}
                            {$opt}
                        {/if}
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>