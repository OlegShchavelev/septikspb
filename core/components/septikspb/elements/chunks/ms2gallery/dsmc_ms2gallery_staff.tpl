<h3>Коллектив компании</h3>
<div class="people_block1">
    {foreach $files as $file}
    <div class="people_item1">
        <div class="img"><img src="{$file.url}" alt="" /></div>
        <div class="caption">
            <p class="title">{$file.alt}</p>

            <p>{$file.description}</p>
        </div>
    </div>
    {/foreach}
</div><!--/people_block-->
