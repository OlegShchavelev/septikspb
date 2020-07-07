<div class="col-4">
    <div class="card border-0">
        {if $_pls['small.original'] ?}
        <img class="card-img-top card-img-height my-0" src="{$_pls['small.original']}">
        {else}
        <img class="card-img-top card-img-height my-0" src="/assets/components/ms2gallery/img/web/ms2_medium.png">
        {/if}
        {if $_pls['small.original'] ?}
        <div class="card-img-overlay d-flex flex-column justify-content-between">
            <a href="{$uri}">
            <span class="plus"></span>
            </a>
        </div>
        {/if}
        <div class="card-body text-center">
            <a href="{$uri}" class="h6 text-dark font-weight-bold text-center text-decoration-none">{$pagetitle}</a>
            <p class="card-text text-center text-muted">{$introtext}</p>
        </div>
    </div>
</div>