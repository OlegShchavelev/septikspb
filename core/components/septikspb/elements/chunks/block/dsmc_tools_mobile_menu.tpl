{if $item.children}
   {if $item.level < 2}
    <li class="nav-item dropdown">
        <a href="{$item.uri}" class="nav-link dropdown-toggle" data-toggle="dropdown" data-display="static" aria-haspopup="false" aria-expanded="false">
            {$item.menutitle ?: $item.pagetitle}
        </a>
        <div class="dropdown-menu">
            <div class="sidebar-block-modal-header">
                <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-chevron-left text-xl font-weight-bold text-white" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                    <path fill-rule="evenodd" d="M11.354 1.646a.5.5 0 0 1 0 .708L5.707 8l5.647 5.646a.5.5 0 0 1-.708.708l-6-6a.5.5 0 0 1 0-.708l6-6a.5.5 0 0 1 .708 0z"/>
                </svg>
            </div>
            <ul class="nav flex-column">
                {foreach $item.children as $children}
                {set $children.level = $item.level + 1}
                {$_modx->getChunk('dsmc.Tools.mobile_menu' , ['item' => $children])}
                {/foreach}
            </ul>
        </div>
    </li>
    {else}
    <li class="nav-item">
        <a href="{$item.id | url}" class="nav-link nav-title">{$item.menutitle ?: $item.pagetitle}</a>
            <ul class="nav flex-column nav-mobile-submenu">
            {foreach $item.children as $children}
            {set $children.level = $item.level + 1}
            {$_modx->getChunk('dsmc.Tools.mobile_menu' , ['item' => $children])}
            {/foreach}
            </ul>
    </li>
    {/if}
{else}
<li class="nav-item">
    <a href="{$item.uri}" class="nav-link">
        {$item.menutitle ?: $item.pagetitle}
    </a>
</li>
{/if}