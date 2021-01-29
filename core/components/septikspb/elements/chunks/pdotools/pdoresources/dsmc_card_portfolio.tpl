<div class="col-md-2 col-lg-4 col-xl-3 my-3">
    <div class="card card-portfolio border-0">
        <div class="card-overlay card-hover-overlay position-relative">
            <div class="card-img">
                <a href="{$uri}">
                {if $_pls['small.original'] ?}
                    <img class="card-img-top card-img-height my-0" src="{$_pls['small.original']}">
                {else}
                    <img class="card-img-top card-img-height my-0"
                         src="/assets/components/ms2gallery/img/web/ms2_medium.png">
                {/if}
                <div class="card-img-overlay">

                        <svg xmlns="http://www.w3.org/2000/svg" width="36" height="36" fill="currentColor"
                             class="bi bi-plus-circle text-white" viewBox="0 0 16 16">
                            <path fill-rule="evenodd"
                                  d="M8 15A7 7 0 1 0 8 1a7 7 0 0 0 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
                            <path fill-rule="evenodd"
                                  d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"/>
                        </svg>

                </div>
                </a>
            </div>
        </div>
        <div class="card-body text-center">
            <a href="{$uri}" class="h6 text-dark font-weight-bold text-center text-decoration-none">{$pagetitle}</a>
            <p class="card-text text-center text-muted text-sm py-3">{$introtext}</p>
        </div>
    </div>
</div>