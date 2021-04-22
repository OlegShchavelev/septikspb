<div class="section {'id' | resource == 1 ? 'py-6' : 'py-4'}">
    <div class="container">
        <div class="section-title {'id' | resource == 1 ? 'text-center' : 'text-left'}">
            <h2 class="{'id' | resource == 1 ? 'h1' : 'h2'}">{$title}</h2>
            {if $content ?}
            <div class="lead">
                <p class="intro-title">
                    {$content}
                </p>
            </div>
            {/if}
        </div>
        <div class="swiper-container similar-benefits-carousel py-4">
            <div class="swiper-wrapper swiper-wrapper-center">
                {foreach $items as $item}
                <div class="swiper-slide swiper-slide-dots">
                    <div class="card">
                        <div class="card-icon {($row@index is even) ? 'bg-primary' : 'bg-success'}">
                            <svg class="svg-icon svg-icon-lg">
                                <use xlink:href="#{$item.icon}"></use>
                            </svg>
                        </div>
                        <div class="card-body">
                            <div class="card-title text-center font-weight-bold">
                                {$item.name}
                            </div>
                        </div>
                    </div>
                </div>
                {/foreach}
            </div>
            <div class="swiper-pagination position-relative mt-4 mb-3"></div>
            <div class="swiper-outside-nav align-with-products">
                <div id="similarPrev" class="swiper-button-prev"></div>
                <div id="similarNext" class="swiper-button-next"></div>
            </div>
        </div>
        <div class="section-bottom text-center">
            {$addfld}
        </div>
    </div>
</div>