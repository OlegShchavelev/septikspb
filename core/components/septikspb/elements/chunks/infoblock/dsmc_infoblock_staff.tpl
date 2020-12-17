<section class="section pt-6 pb-4 border-top">
    <div class="container">
        <div class="section-title">
            <h2>{$title}</h2>
            {$content}
        </div>
        <div class="row no-gutters">
            {foreach $items as $item}
            <div class="card col-md-6 col-lg-4">
                <img class="card-img" src="{$item.image}">
                <div class="card-img-overlay d-flex flex-column justify-content-between">
                    <div class="card-img-overlay d-flex flex-column justify-content-end pb-4">
                        <div class="card-title text-lg font-weight-bold divider-success-no-gutters text-white pl-3 pb-2">
                            {$item.name}
                        </div>
                        {if $item.description ?}
                        <div class="cart-text text-white pl-3">
                            <i>{$item.description}</i>
                        </div>
                        {/if}
                    </div>
                </div>
            </div>
            {/foreach}
        </div>
        <div class="section-bottom mt-2">
            {$addfld}
        </div>
    </div>
</section>