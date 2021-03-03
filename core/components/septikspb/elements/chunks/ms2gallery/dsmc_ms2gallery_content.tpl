<div class="section py-5">
    <div class="row no-gutters">
        {foreach $files as $file}
        <div class="col-md-6 col-lg-3">
            <div class="card p-1 border-0 rounded-0 w-100">
                <div class="card-overlay card-hover-overlay position-relative">
                    <div class="card-img">
                        <img src="{$file.square}" class="card-img-top rounded-0" alt="{'longtitle' | resource}: описание и характеристики"/>
                    </div>
                    <div class="card-img-overlay">
                        <a class="fancy card-img-overlay-fancy" data-fancybox="gallery" href="{$file.url}">
                            <svg xmlns="http://www.w3.org/2000/svg" width="36" height="36" fill="currentColor" class="bi bi-plus-circle text-white" viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M8 15A7 7 0 1 0 8 1a7 7 0 0 0 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
                                <path fill-rule="evenodd" d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"/>
                            </svg>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        {/foreach}
    </div>
</div>
