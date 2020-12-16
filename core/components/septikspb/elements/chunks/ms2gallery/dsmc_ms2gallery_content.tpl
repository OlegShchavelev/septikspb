<div class="section py-5">
    <div class="row no-gutters">
        {foreach $files as $file}
            <div class="col-md-6 col-lg-3">
                <div class="card p-1 border-0 rounded-0 w-100">
                    <div class="card-img">
                        <img src="{$file.square}" class="card-img-top rounded-0" alt=""/>
                        <div class="card-img-overlay">
                            <a class="fancy" data-fancybox="gallery" href="{$file.url}">
                                <span class="plus"></span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        {/foreach}
    </div>
</div>
