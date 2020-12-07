<section class="section py-6 border-0 bg-light">
    <div class="container">
        <div class="section-title text-center">
            <h2 class="h1">{$title}</h2>
            {if $content ?}
            <div class="lead">
                {$content}
            </div>
            {/if}
        </div>
        <div class="row no-gutters">

            {foreach $items as $item}

            {set $menuSolutions = 'fetchMenu' | snippet : [
            'parents' => 277,
            'includeTVs' => 'tv_categories_solutions',
            'tvPrefix' => '',
            'where' => [
            'class_key' => 'msCategory'
            ]
            ]}

            {set $name = $item.name}

            <div class="col-md-6 col-lg-4">
                <div class="card">
                    <img class="card-img" src="{$item.image}" alt="Card image">
                    <div class="card-img-overlay d-flex flex-column justify-content-between">
                            <div class="card-title">
                                <a class="text-white font-weight-bold" href="#">{$item.name}</a>
                            </div>

                            <div class="text-text">
                                <ul class="nav nav-dark flex-column">
                                    {foreach $menuSolutions.277.children as $item}

                                        {if $item.tv_categories_solutions.0 == $name}
                                        <li class="nav-item" class="nav-item">
                                            <a class="nav-link" href="{$item.uri}">{$item.menutitle ?: $item.pagetitle}</a>
                                        </li>
                                        {/if}
                                    {/foreach}
                                </ul>
                            </div>
                    </div>
                </div>
            </div>
            {/foreach}
        </div>
        <div class="section-bottom text-center">
        <div class="lead">
            <p class="lead">
                Вы можете выбрать наиболее подходящее для вас предложение по количеству жильцов в доме и оставить заявку  на нашем сайте.
                Мы обеспечим бесплатный выезд нашего замерщика. Он оценил фронт работ, а вы сделаете окончательный выбор.
            </p>
            <a href="#" class="btn btn-primary btn-lg btn-pills">
                            <span class="mr-2">
                                <svg class="svg-icon svg-icon-md">
                                    <use xlink:href="#icon-calculator"></use>
                                </svg>
                            </span>
                Калькулятор
            </a>
        </div>
        </div>
    </div>
    </div>
</section>