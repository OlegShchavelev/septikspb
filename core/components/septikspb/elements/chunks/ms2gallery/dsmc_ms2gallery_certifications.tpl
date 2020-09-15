{if $files?}
<div class="cert_wrap">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                {if 'dsmc_wrapper_title' | placeholder ?}
                <h2 class="green_decor">{'dsmc_wrapper_title' | placeholder}</h3>
                {/if}

                    <div class="cert_block">

                        {foreach $files as $file}

                            <div class="cert_item">
                                <div class="img">
                                    <a href="{$file.url}" class="fancy">
                                        <img src="{$file.mini}" alt=""/>
                                    </a>
                                </div>
                            </div>

                        {/foreach}

                    </div>
            </div>
        </div>
    </div>
</div><!--/cert_wrap-->
{/if}