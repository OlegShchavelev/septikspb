<div class="section">
    <div class="swiper-container similar-main-carousel">
        <div class="swiper-wrapper">
            {foreach $items as $item}
                <div class="swiper-slide" data-swiper-autoplay="{'cc_main_slider_autoplay_time' | option}">
                    <div class="card">
                        <a href="{$item.more | url}">
                            <img class="card-img" src="{$item.img}">
                        </a>
                    </div>
                </div>
            {/foreach}
        </div>
        <div class="swiper-pagination position-relative mt-4 mb-3"></div>
    </div>
</div>