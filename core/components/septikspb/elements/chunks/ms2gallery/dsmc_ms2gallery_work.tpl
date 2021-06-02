<section class="slider py-6">
    <div class="container">

        <div class="section-title">
            <h2>Наши работы</h2>
        </div>

        <div class="row no-gutters">

            {foreach $files as $file}
            <div class="col-md-6 col-lg-3">
                <div class="card p-1 border-0 rounded-0 w-100">
                    <img src="{$file.square}" class="card-img-top rounded-0" alt="{'pagetitle' | resource} установка под ключ"/>
                </div>
            </div>
            {/foreach}
        </div>

        <div class="py-4 text-center">
            <a class="btn btn-light btn-lg text-dark" href="portfolio/">Показать еще работы</a>
        </div>

    </div>
</section><!--/our_works_wrap-->