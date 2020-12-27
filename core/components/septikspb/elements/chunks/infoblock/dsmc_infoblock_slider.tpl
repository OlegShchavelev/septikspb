<div class="section pb-4">
    <div class="swiper-container similar-main-carousel">
        <div class="swiper-wrapper">
        {foreach $items as $item}
            <div class="swiper-slide">
                <div class="card">
                        <a href="{$item.url | url}">
                        <img class="card-img" src="{$item.image}">
                        </a>
                </div>
            </div>
        {/foreach}
        </div>
    </div>
</div>