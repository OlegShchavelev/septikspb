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