<div class="col-lg-4 col-md-6 mb-4">
    <div class="card stock-card border-0 h-100">
        <div class="card-overlay card-hover-overlay position-relative">
            <a href="{$id | url}" rel="nofollow">
                <img src="{$image}" class="card-img-top card-img-height my-0" alt="{$pagetitle}">
                <div class="card-img-overlay">
                    <svg xmlns="http://www.w3.org/2000/svg" width="36" height="36" fill="currentColor" class="bi bi-plus-circle text-white" viewBox="0 0 16 16">
                        <path fill-rule="evenodd" d="M8 15A7 7 0 1 0 8 1a7 7 0 0 0 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"></path>
                        <path fill-rule="evenodd" d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"></path>
                    </svg>
                </div>
            </a>
        </div>
        <div class="card-body">
            <a href="{$id | url}" rel="nofollow" class="h6 d-block text-dark font-weight-bold text-decoration-none">{$pagetitle}</a>
            {if $introtext}
                <div class="card-text mb-2">
                    {$introtext}
                </div>
            {/if}
            <div class="card-text">
                <span class="font-weight-bold">{$publishedon | date : "d.m.Y"}</span>
            </div>
        </div>
    </div>
</div>