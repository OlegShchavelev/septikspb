{extends 'template:Базовый шаблон'}
{block 'hero'}
    {if ('tv_section_key_proposal_active' | tv) == 1}
        <section class="section section-hero position-relative">
            <img class="img-hero-absolute position-absolute" alt="Фоновое изображение" src="{'tv_section_key_proposal_bg_img' | tv}">
            <div class="section-hero-bg py-4 py-lg-6 {'tv_section_key_proposal_bg' | tv}">
                <div class="container">
                    <div class="row no-gutters">
                        <div class="col-lg-8">
                            <div class="card bg-transparent border-0">
                                <div class="card-body text-white">
                                    <div class="d-flex flex-column flex-lg-row">
                                        <div class="div text-center text-lg-left">
                                            <div class="icon icon-shape icon-shape-triangle icon-shape-primary rounded mb-4 mr-0 mr-lg-4">
                                                <svg class="svg-icon">
                                                    <use xlink:href="#{'tv_section_key_proposal_icon' | tv}"></use>
                                                </svg>
                                            </div>
                                        </div>
                                        <div class="div text-center text-lg-left">
                                            <div class="card-title text-white">
                                                <h1 class="h2">{'pagetitle_full' | tv ?: 'pagetitle' | resource}</h1>
                                            </div>
                                            {if 'tv_section_key_proposal_description' | tv ?}
                                                <div class="card-text">
                                                    <p>{'tv_section_key_proposal_description' | tv}</p>
                                                </div>
                                            {/if}
                                            {if 'tv_section_key_proposal_price' | tv  | number : 0 : '.' : ' ' ?}
                                                <div class="card-price">
                                                    <span class="h2">от {'tv_section_key_proposal_price' | tv  | number : 0 : '.' : ' '} р.</span>
                                                </div>
                                            {/if}
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="position-absolute">
                                <div class="card mt-0 mt-lg-4 shadow-sm rounded-0">
                                <div class="card-body">
                                    {'!mvtForms2' | snippet : [
                                    'form' => 'key_proposal'
                                    ]}
                                </div>
                            </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    {/if}
{/block}
{block 'content'}
    <div class="container" itemscope itemtype="http://schema.org/WebPage">
        <div class="row">
            <div class="col-md-3 col-sm-12 col-xs-12">
                {include 'sidebar'}
            </div>
            <div class="col-md-9 col-sm-12 col-xs-12" itemprop="mainContentOfPage">
                {if ('tv_section_key_proposal_active' | tv) != 1}
                {if $_modx->resource.pagetitle_full != ''}
                    <h1>{$_modx->resource.pagetitle_full}</h1>
                {else}
                    <h1>{$_modx->resource.pagetitle}</h1>
                {/if}
                {/if}
                <div class="text-content">
                    {'content' | resource}
                </div>
            </div>
        </div>

    </div>
{/block}