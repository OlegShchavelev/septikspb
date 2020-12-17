<section class="section py-6 border-top">
    <div class="container">
        <div class="section-title">
            <h3 class="h2">
                <span class="text-success">{$title}
            </h3>
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
        </div>
    </div>
</section>