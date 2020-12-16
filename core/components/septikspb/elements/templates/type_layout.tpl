{extends 'template:Базовый шаблон'}
{block 'content'}

<div class="container" itemprop="mainContentOfPage">
    <h1>{'pagetitle' | resource}</h1>
    <div class="text-content">
    {'content' | resource}
    </div>
</div>


{/block}