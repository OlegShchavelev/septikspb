<div class="col-md-2 col-lg-4 col-xl-3 my-3">
    <div class="card card-portfolio border-0">
        <div class="position-relative">
        {if $_pls['small.original'] ?}
        <img class="card-img-top card-img-height my-0" src="{$_pls['small.original']}">
        {else}
        <img class="card-img-top card-img-height my-0" src="/assets/components/ms2gallery/img/web/ms2_medium.png">
        {/if}
        {if $_pls['small.original'] ?}
        <div class="card-img-overlay p-0">
            <a href="{$uri}">
            <span class="plus"></span>
            </a>
        </div>
        {/if}
        </div>
        <div class="card-body text-center">
            <a href="{$uri}" class="h6 text-dark font-weight-bold text-center text-decoration-none">{$pagetitle}</a>
            <p class="card-text text-center text-muted">{$introtext}</p>
        </div>
    </div>
</div>