{extends 'template:Базовый шаблон'}
{block 'content'}
    {set $favorites = '!msFavorites.ids' | snippet}
    <div class="container" itemscope itemtype="http://schema.org/WebPage">

        {if 'pagetitle_full' | tv != ''}
            <h1>{'pagetitle_full' | tv}</h1>
        {else}
            <h1>{'pagetitle' | resource}</h1>
        {/if}
        <div class="text-content py-6">
            {'!CompareList' | snippet : [
            'fields' => '{"default":["price","ms_price_key", "option.ms_vanni", "option.ms_posuda", "option.ms_stirka", "option.ms_rakovini", "option.ms_dushevaya", "option.ms_watercloset"]}'
            'tplHead' => 'dsmc.Comparison.head',
            'tplParam' => 'dsmc.Comparison.param',
            'tplCorner' => 'dsmc.Comparison.corner'
            ]}
        </div>
    </div>
{/block}