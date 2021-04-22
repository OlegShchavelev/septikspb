<div class="section pt-4 border-top">
        <div class="section-title">
            <h3 class="h2">
                {$title}
            </h3>
            <div class="lead">
                {$content}
            </div>
        </div>
        <div class="swiper-container similar-logo-carousel py-4">
            <div class="swiper-wrapper">
                {foreach $items as $item}
                    <div class="swiper-slide">
                        <div class="card bg-light">
                            <img class="img-top" src="{$item.image}">
                        </div>
                    </div>
                {/foreach}
            </div>
            <div class="swiper-pagination position-relative mt-4 mb-3"></div>
        </div>
</div>