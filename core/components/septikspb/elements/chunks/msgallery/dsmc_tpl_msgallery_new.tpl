<div class="gallery detali-gallery">
    <div class="gallery-top swiper-container">
        <div class="swiper-wrapper">
            {if $files?}
            {foreach $files as $file}
            <div class="swiper-slide">
                <a href="{$file['url']}" title="Дуб Azores —  (Однополосный)" class="fancy" data-fancybox="gallery">
                    <img src="{$file['url']}">
                </a>
            </div>
            {/foreach}
            <!-- Add Arrows -->
            <div class="swiper-button-next swiper-button-green"></div>
            <div class="swiper-button-prev swiper-button-green"></div>
            {/if}
        </div>
    </div>
    <div class="gallery-thumbs position-relative swiper-container">
        <div class="swiper-wrapper">
            {if $files?}
            {foreach $files as $file}
            <div class="swiper-slide">
                <img src="{$file['url']}">
            </div>
            {/foreach}
            {/if}
        </div>
    </div>
</div>