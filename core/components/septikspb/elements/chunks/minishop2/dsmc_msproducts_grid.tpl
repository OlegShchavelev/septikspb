{set $opt = '!msProductOptions' | snippet : [
'tpl' => 'dsmc.tpl.row.cart.product',
'groups' => 'Возможности',
'product' => $id
]}

<div class="col-md-6 col-xl-3 my-3 row-card{($ms_price_key != 0 && $opt != '') ? ' product-overlay' : ''}">
    <div class="card product h-100">
        <div class="d-flex card-img pt-4 align-items-center justify-content-center bd-highlight">
            <a href="{$id | url}">
                <img src="{$image | phpthumbon: 'w=300&h=300&bg=fff&q=61'}" class="card-img-top p-3" alt="{$pagetitle}">
            </a>
        </div>
        <div class="card-body position-relative d-flex flex-column justify-content-between">
            <div class="card-text d-flex flex-column justify-content-start h-100">
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
            </div>
            <div class="card-text position-relative">
                <div class="d-flex flex-column justify-content-between body-price">
                    {if $ms_price_key != 0}
                        <div class="good-price">
                            <p class="label green">
                                Цена «под ключ»
                            </p>
                            <div class="list_line mt-2">
                                <p class="price">
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
                    <div class="equipment-price mt-2">
                        <p class="label blue">
                            {($ms_price_key != 0 && $opt != '') != 0 ? 'Цена оборудования' : 'Цена'}
                        </p>
                        {if $ms_price_key != 0}
                        <div class="mt-2 d-flex align-items-center">
                            <p class="price">
                                {$price} {'ms2_frontend_currency' | lexicon}
                            </p>
                            {if $old_price != 0}
                                <p class="old_price"><span class="badge badge-danger ml-1 align-items-center px-2 py-1"><del>{$old_price} {'ms2_frontend_currency' | lexicon}</del></span></p>
                            {/if}
                        </div>
                        {else}
                            <div class="list_line mt-2">
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