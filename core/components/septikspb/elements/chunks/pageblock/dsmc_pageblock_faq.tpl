<section class="section py-6">
    <div class="container">
        <div class="section-header">
            <div class="section-title text-center mb-5">
                <h2 class="h1">{$title}</h2>
            </div>
            {if $headtext ?}
            <div class="section-text mb-5 text-center">
               {$headtext}
            </div>
            {/if}
        </div>
        <div class="section-body mb-6">
            <div class="accordion" id="{$alias}">
                {foreach $items as $key => $item}
                <div class="card shadow-sm bg-white">
                    <div class="card-header bg-white" id="headingOne">
                            <a class="card-toggler d-flex align-items-center justify-content-between" type="button" data-toggle="collapse"
                                    data-target="#{$alias}_{$key}" aria-expanded="{$item.collapse == 1 ? 'true' : 'false'}" aria-controls="{$alias}_{$key}">
                                {$item.question}
                                <span class="card-toggler-icon">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-arrow-down-circle" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8zm15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM8.5 4.5a.5.5 0 0 0-1 0v5.793L5.354 8.146a.5.5 0 1 0-.708.708l3 3a.5.5 0 0 0 .708 0l3-3a.5.5 0 0 0-.708-.708L8.5 10.293V4.5z"/>
</svg>
                                </span>
                            </a>
                    </div>
                    <div id="{$alias}_{$key}" class="collapse{$item.collapse == 1 ? ' show' : ''}" aria-labelledby="headingOne"
                         data-parent="#{$alias}">
                        <div class="card-body">
                            {$item.answer}
                        </div>
                    </div>
                </div>
                {/foreach}
            </div>
        </div>
        <div class="section-footer">
            {if $foottext}
            <div class="section-text text-center">
                {$foottext}
            </div>
            {/if}
        </div>
    </div>
</section>