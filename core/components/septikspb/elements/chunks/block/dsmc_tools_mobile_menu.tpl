{if $item.children}
    <li class="nav-item dropdown-slide">
        <a href="{$item.uri}" class="nav-link dropdown-toggle dropdown-slide-right">
            {$item.menutitle ?: $item.pagetitle}
        </a>
        <div class="dropdown-wrapper slide-left">
            <div class="sidebar-block-modal-header d-flex justify-content-between align-items-center">
                <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi nav-toggler-back bi-chevron-left text-xl font-weight-bold text-white" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                    <path fill-rule="evenodd" d="M11.354 1.646a.5.5 0 0 1 0 .708L5.707 8l5.647 5.646a.5.5 0 0 1-.708.708l-6-6a.5.5 0 0 1 0-.708l6-6a.5.5 0 0 1 .708 0z"/>
                </svg>
                <a href="{$item.uri}" class="btn btn-lg btn-link pr-0">
                    {$item.menutitle ?: $item.pagetitle}
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-right-short" viewBox="0 0 16 16">
                        <path fill-rule="evenodd" d="M4 8a.5.5 0 0 1 .5-.5h5.793L8.146 5.354a.5.5 0 1 1 .708-.708l3 3a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708-.708L10.293 8.5H4.5A.5.5 0 0 1 4 8z"/>
                    </svg>
                </a>
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
    <a href="{$item.uri}" class="nav-link">
        {$item.menutitle ?: $item.pagetitle}
    </a>
</li>
{/if}