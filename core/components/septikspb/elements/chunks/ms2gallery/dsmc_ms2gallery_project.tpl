<div class="gallery">
    <div class="gallery-top swiper-container">
        <div class="swiper-wrapper">
            {foreach $files as $file}
            <div class="swiper-slide">
                <a href="{$file['url']}" class="fancy" data-fancybox="gallery">
                    <img src="{$file['url']}">
                </a>
            </div>
            {/foreach}
            <!-- Add Arrows -->
            <div class="swiper-button-next swiper-button-white"></div>
            <div class="swiper-button-prev swiper-button-white"></div>
        </div>
    </div>
    <div class="gallery-thumbs position-relative swiper-container">
        <div class="swiper-wrapper">
            {foreach $files as $file}
            <div class="swiper-slide">
                <img src="{$file['mini']}">
            </div>
            {/foreach}
        </div>
    </div>
</div>