{if $files?}
<section class="section py-6">
    <div class="container">
        {if 'dsmc_wrapper_title' | placeholder ?}
        <div class="section-title mb-5">
            <h2>{'dsmc_wrapper_title' | placeholder}</h2>
        </div>
        {/if}

        <div class="row justify-content-center">
            {foreach $files as $file}
            <div class="col-6 col-md-3 col-lg-2 mb-4">
                <a class="fancy" href="{$file.url}" data-fancybox="gallery">
                <div class=" auto-height">
                    <div class="card card-rounded-hover card-hover-icon-plus bg-light rounded-circle d-flex justify-content-center p-5">
                        <img class="img-fluid" src="{$file.mini}" alt=""/>
                    </div>
                </div>
                </a>
            </div>
            {/foreach}
        </div>
    </div>
    </div>
</section>
{/if}