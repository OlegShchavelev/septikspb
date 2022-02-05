<div class="section bg-primary section section-dark section-background-map py-6">
    <div class="container">
        <div class="text-content">
            <div class="row">
                <div class="col-lg-7 d-flex align-items-end pt-0 pt-md-7 pt-lg-0">
                    {if $addfld ?}
                        <div>
                            {$addfld}
                        </div>
                    {/if}
                </div>
                <div class="col-lg-5 pt-4">
                    <div class="section-title mb-5">
                        {if $title ?}
                            <h2 class="h1">{$title}</h2>
                        {/if}
                        {$content}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<section class="section bg-light py-6 border-bottom">
    <div class="container">
        <div class="section-header d-flex justify-content-center">
            <div class="section-title mb-4">
                <h2>Выполненные проекты</h2>
            </div>
        </div>
        <div class="row">
            {'!ms2GalleryResources' | snippet : [
            'includeOriginal' => 1,
            'tpl' => 'dsmc.card.portfolio',
            'limit' => 8,
            'parents' => 228
            ]}
        </div>
        <div class="section-footer d-flex justify-content-center py-5">
            <a href="{'223' | url}" class="btn btn-lg btn-success">Смотреть все</a>
        </div>
    </div>
</section>