<ul class="nav nav-pills nav-tabs mb-3" id="pills-tab" role="tablist">
    {foreach $items as $item index=$index}
    <li class="nav-item" role="presentation">
        <a class="nav-link {$index != 0 ?: 'active'}" id="pills-tabs-{$index}" data-toggle="pill" href="#tabs-{$index}" role="tab" aria-controls="tabs-{$index}" aria-selected="{$index != 0 ?: 'true'}">{$item.name}</a>
    </li>
    {/foreach}
</ul>
<div class="tab-content py-4" id="pills-tabContent">
    {foreach $items as $item index=$index}
    <div class="tab-pane fade show {$index != 0 ?: 'active'}" id="tabs-{$index}" role="tabpanel" aria-labelledby="pills-tabs-{$index}">
        <div class="tab-content">
            {$item.content}
        </div>
    </div>
    {/foreach}
</div>