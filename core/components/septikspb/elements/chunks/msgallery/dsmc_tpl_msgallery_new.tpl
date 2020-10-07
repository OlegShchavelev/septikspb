{if $files?}
    <div class="big slider-for text-center d-flex justify-content-center mt-5">
        {foreach $files as $file}
            <a href="{$file['url'] | phpThumbOn : 'w=600&h=600&bg=ffffff'}" data-fancybox><img src="{$file['url'] | phpThumbOn : 'w=300&h=300&bg=ffffff'}" alt=""  itemprop="image"/></a>
        {/foreach}
    </div>
    {if $files | length >= 2}
        <div class="thumbs slider-nav">
            {foreach $files as $file}
                <div class="item"><img src="{$file['url'] | phpThumbOn : 'w=100&h=100&zc=1'}" alt="" /></div>
            {/foreach}
        </div>
    {/if}
{else}
    <img src="{('assets_url' | option) ~ 'components/minishop2/img/web/ms2_medium.png'}"
         srcset="{('assets_url' | option) ~ 'components/minishop2/img/web/ms2_medium@2x.png'} 2x"
         alt="" title=""/>
{/if}
