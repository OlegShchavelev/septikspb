<div id="msCart">
    {if !count($products)}
    <div class="alert alert-warning">
        {'ms2_cart_is_empty' | lexicon}
    </div>
    {else}
    <div class="table-responsive">
        <table class="table">
            <tr class="header bg-primary">
                <th class="image col-md-3"></th>
                <th class="title col-md-6 font-weight-bold text-white">{'ms2_cart_title' | lexicon}</th>
                <th class="count col-md-2 font-weight-bold text-white">{'ms2_cart_count' | lexicon}</th>
                <th class="price col-md-2 font-weight-bold text-white">{'ms2_cart_price' | lexicon}</th>
                <th class="remove col-md-1"></th>
            </tr>

            {foreach $products as $product}
            {var $image}
            {if $product.thumb?}
            <img src="{$product.thumb | phpthumbon : "w=75&q=75"}" alt="{$product.pagetitle}" title="{$product.pagetitle}"/>
            {else}
            <img src="{'assets_url' | option}components/minishop2/img/web/ms2_small.png"
                 srcset="{'assets_url' | option}components/minishop2/img/web/ms2_small@2x.png 2x"
                 alt="{$product.pagetitle}" title="{$product.pagetitle}"/>
            {/if}
            {/var}
            <tr id="{$product.key}">
                <td class="image col-md-1">
                    <div class="image mw-100 pr-3">
                        {if $product.id?}
                        <a href="{$product.id | url}">{$image}</a>
                        {else}
                        {$image}
                        {/if}
                    </div>
                </td>
                <td class="title col-md-6 align-middle">
                    <div class="title">
                        {if $product.id?}
                        <a href="{$product.id | url}">{$product.pagetitle}</a>
                        {else}
                        {$product.name}
                        {/if}
                        {if $product.options?}
                        <div class="small">
                            {$product.options | join : '; '}
                        </div>
                        {/if}
                    </div>
                </td>
                <td class="count col-md-2 align-middle">
                    <form method="post" class="ms2_form" role="form">
                        <input type="hidden" name="key" value="{$product.key}"/>
                        <div class="form-group mb-0">
                            <div class="input-group input-group-sm">
                                <input type="number" name="count" value="{$product.count}" class="form-control"/>
                                <div class="input-group-append">
                                    <span class="input-group-text">{'ms2_frontend_count_unit' | lexicon}</span>
                                </div>
                            </div>
                            <button class="btn btn-sm" type="submit" name="ms2_action" value="cart/change">&#8635;</button>
                        </div>
                    </form>
                </td>
                <td class="price col-md-2 align-middle">
                    <span class="mr-2 text-nowrap">{$product.price} {'ms2_frontend_currency' | lexicon}</span>
                    {if $product.old_price?}
                    <span class="old_price text-nowrap text-danger">{$product.old_price} {'ms2_frontend_currency' | lexicon}</span>
                    {/if}
                </td>
                <td class="remove col-md-1 align-middle">
                    <form method="post" class="ms2_form text-md-right">
                        <input type="hidden" name="key" value="{$product.key}">
                        <button class="btn btn-link text-danger font-weight-bold" type="submit" name="ms2_action" value="cart/remove"><i class="fas fa-trash"></i></button>
                    </form>
                </td>
            </tr>
            {/foreach}

            <tr class="footer">
                <th></th>
                <th class="total">{'ms2_cart_total' | lexicon}:</th>
                <th class="total_count">
                    <span class="ms2_total_count font-weight-bold">{$total.count}</span>
                    {'ms2_frontend_count_unit' | lexicon}
                </th>
                <th class="total_cost text-nowrap" colspan="3">
                    <span class="ms2_total_cost font-weight-bold">{$total.cost}</span>
                    {'ms2_frontend_currency' | lexicon}
                </th>
            </tr>
        </table>
    </div>

    {/if}
</div>
