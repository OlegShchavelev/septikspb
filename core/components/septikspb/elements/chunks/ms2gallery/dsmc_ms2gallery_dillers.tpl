<div class="dealer_wrap">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">

                <h3>[[*landing_patrners_title]]</h3>
                <div class="dealers_block">
                    {foreach $files as $file}
                    <div class="dealers_item">
                        <img src="{$file.url}" alt="" />
                    </div>
                    {/foreach}
                </div>
            </div>
        </div>
    </div>
</div><!--/dealer_wrap-->