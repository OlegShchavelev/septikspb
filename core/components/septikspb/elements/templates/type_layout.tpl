{extends 'template:Базовый шаблон'}
{block 'content'}

<div class="container">
    <h1>{'pagetitle' | resource}</h1>
    <div class="text-content">
    {'content' | resource}
    </div>
</div>


{/block}