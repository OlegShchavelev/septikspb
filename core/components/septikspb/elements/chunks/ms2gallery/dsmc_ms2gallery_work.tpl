<section class="py-5">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">

                <h2>Наша работа</h2>

                <div class="row no-gutters">

                    {foreach $files as $file}

                        <div class="col-md-6 col-lg-4">
                            <div class="card p-1 border-0 rounded-0 w-100">
                                <img src="{$file.square}" class="card-img-top rounded-0" alt="" />
                            </div>
                        </div>

                    {/foreach}

                </div>

                <div class="py-5">
                    <a class="btn btn-light btn-xl" href="portfolio/">Показать еще работы</a>
                </div>

            </div>
        </div>
    </div>
</section><!--/our_works_wrap-->