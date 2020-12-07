<section class="section py-6">
<h3 class="h2">Коллектив компании</h3>
    <div class="row">
    {foreach $files as $file}
    <div class="col-lg-4">
        <div class="card">
        <div class="img"><img src="{$file.url}" alt="" /></div>
        <div class="card-body">
            <p class="card-title">{$file.alt}</p>
            <p>{$file.description}</p>
        </div>
        </div>
    </div>
    {/foreach}
    </div>
</div><!--/people_block-->
</section>