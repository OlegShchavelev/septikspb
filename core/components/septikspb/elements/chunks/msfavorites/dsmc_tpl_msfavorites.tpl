<div class="cart-item msfavorites-parent">
    <div class="row d-flex align-items-center text-left text-md-center">
        <div class="col-12 col-md-5">
            <a href="#" class="cart-remove d-flex d-md-none justify-content-end msfavorites" data-click data-data-list="default"
               data-data-type="resource" data-data-key="{$id}" data-msfavorites-mode="list"
               data-data-pagetitle="{$pagetitle}">
                <span class="msfavorites-text-remove">
                    <i class="fas fa-trash"></i>
                </span>
            </a>
            <div class="d-flex align-items-center">
                <a href="{$id | url}"><img src="{$image}" alt="{$pagetitle}" class="cart-item-img"></a>
                <div class="cart-title text-left"><a href="{$id | url}" class="text-dark"><strong>{$pagetitle}</strong></a>
                </div>
            </div>
        </div>
        <div class="col-12 col-md-7 mt-4 mt-md-0">
            <div class="row align-items-center">
                <div class="col-md-4">
                    <div class="row">
                        <div class="col-6 d-md-none text-muted">Цена</div>
                        <div class="col-6 col-md-12 text-right text-lg font-weight-bold text-md-center">{$price} {'ms2_frontend_currency' | lexicon}</div>
                    </div>
                </div>
                <div class="col-md-5">
                    <form method="post" class="ms2_form mb-0" data-action="cart/add">
                        <input type="hidden" name="id" value="{$id}">
                        <input type="hidden" name="count" value="1">
                        <input type="hidden" name="options" value="[]">
                        <button class="btn btn-primary btn-lg btn-pills btn-icon-label mt-4 mt-md-0" type="submit" name="ms2_action"
                                value="cart/add">
                            <span class="btn-icon-label">
                                <svg class="svg-icon text-hover-primary svg-icon-heavy d-sm-none">
                                        <use xlink:href="#icon-cart"></use>
                                </svg>
                            </span>
                            <span class="d-none d-sm-inline">{'ms2_frontend_add_to_cart' | lexicon}</span>
                        </button>
                    </form>
                </div>
                <div class="col-2 d-none d-md-block text-center">
                    <a href="#" class="cart-remove text-muted msfavorites" data-click data-data-list="default"
                       data-data-type="resource" data-data-key="{$id}" data-msfavorites-mode="list"
                       data-data-pagetitle="{$pagetitle}">
                        <span class="msfavorites-text-remove">
                            <i class="fas fa-trash"></i></button>
                        </span>
                    </a></div>
            </div>
        </div>
    </div>
</div>