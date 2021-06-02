<div class="section py-4">
        {if 'dsmc_wrapper_section_title' | placeholder ?}
        <div class="section-title">
            <h2>{'dsmc_wrapper_section_title' | placeholder}</h2>
        </div>
        {/if}

        <div class="row no-gutters">

            {foreach $files as $file}
                <div class="col-md-6 col-lg-4">
                    <div class="card p-1 border-0 rounded-0 w-100">
                        <img src="{$file.square}" class="card-img-top rounded-0" alt="{'pagetitle' | resource} установка под ключ"/>
                    </div>
                        </div>
            {/foreach}
        </div>

        <div class="py-4 text-center">
            <a class="btn btn-success btn-lg" href="portfolio/">Показать еще работы</a>
        </div>

    </div>
</div><!--/our_works_wrap-->