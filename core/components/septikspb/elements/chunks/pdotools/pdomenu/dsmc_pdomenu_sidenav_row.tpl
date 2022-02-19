{if $item.children}
    {if $item.searchable == 1}
        <li class="side-nav-item">
            <a href="{$item.uri}"
               class="side-nav-link{('id' | resource | dsmc_sidenav_class_active : $item.id) ? ' active' : ''}">{$item.menutitle ?: $item.pagetitle}
                <span class="menu-arrow{('id' | resource | dsmc_sidenav_class_active : $item.id) ? ' collapsed' : ''}"
                      data-toggle="collapse" data-target="#{$item.alias}_{$item.id}"
                      aria-expanded="{('id' | resource | dsmc_sidenav_class_active : $item.id) ? 'true' : 'false'}"
                      aria-controls="{$item.alias}_{$item.id}">
                                                            <i class="fas fa-angle-right"></i>
                                                        </span>
            </a>
            <ul id="{$item.alias}_{$item.id}" class="dropdown-side-nav collapse{('id' | resource | dsmc_sidenav_class_active : $item.id) ? ' show' : ''}">
                {foreach $item.children as $children}
                    {set $children.level = 2}
                    {$_modx->getChunk('dsmc.pdoMenu.sidenav.row', [
                    'item' => $children
                    ])}
                {/foreach}
            </ul>
        </li>
    {else}
        <li class="side-nav-item">
            <a href="#"
               class="side-nav-link{('id' | resource | dsmc_sidenav_class_active : $item.id) ? ' active collapsed' : ''}"
               data-toggle="collapse" data-target="#{$item.alias}_{$item.id}"
               aria-expanded="{('id' | resource | dsmc_sidenav_class_active : $item.id) ? 'true' : 'false'}"
               aria-controls="{$item.alias}_{$item.id}">{$item.menutitle ?: $item.pagetitle}
                <span class="menu-arrow">
                    <i class="fas fa-angle-right"></i>
                </span>
            </a>
            <ul id="{$item.alias}_{$item.id}" class="dropdown-side-nav collapse{('id' | resource | dsmc_sidenav_class_active : $item.id) ? ' show' : ''}">
                {foreach $item.children as $children}
                    {set $children.level = 2}
                    {$_modx->getChunk('dsmc.pdoMenu.sidenav.row', [
                    'item' => $children
                    ])}
                {/foreach}
            </ul>
        </li>
    {/if}
{else}
    <li class="side-nav-item">
        <a href="{$item.uri}"
           class="side-nav-link{('id' | resource | dsmc_sidenav_class_active : $item.id) ? ' active' : ''}">{$item.menutitle ?: $item.pagetitle}</a>
    </li>
{/if}