<div class="section bg-primary section-dark py-6">
    <div class="container">
        <div class="text-content">
            <div class="section-title text-center mb-5">
                {if $title ?}
                <h2 class="h1">{$title}</h2>
                {/if}
                {if $content ?}
                <div class="lead">
                    <p class="intro-title">
                        {$content}
                    </p>
                </div>
                {/if}
            </div>
            <div class="card-group card-group-block">
                {foreach $items as $item}
                <div class="card bg-transparent">
                    <div class="card-block bg-success font-weight-bolder h1 text-center py-3 d-flex align-items-center justify-content-center">
                        {if $item.icon ?}
                        <svg class="svg-icon svg-icon-lg">
                                <use xlink:href="#{$item.icon}"></use>
                        </svg>
                        {else}
                        {switch ($row@index + 1)}
                        {case 1}
                        {'' | date : 'Y' - 'foundation_date' | option}
                        {case 3}
                        {'1500' | count_project ~ '+'}
                        {/switch}
                        {/if}
                    </div>
                    <div class="card-body text-center">
                        <div class="card-title text-white">
                            {$item.name}
                        </div>
                        <div class="card-text">
                            {$item.content}
                        </div>
                    </div>
                </div>
                {/foreach}
            </div>
        </div>
    </div>
</div>