<div class="navbar navbar_left pl-0">

    <div class="mb-3 w-100 d-none d-lg-block">
        <a class="btn btn-primary btn-lg link-calc btn-block" href="{'659' | url}">Калькулятор</a>
    </div>

    {if $headerbar_main_menu.9.children ?}
        <div class="navbar-catalog">
            <ul class="side-nav">
                {foreach $headerbar_main_menu.9.children as $item}
                    {if $item.children ?}
                        <li class="side-nav-item">
                            <a href="{$item.uri}"
                               class="side-nav-link{('id' | resource | dsmc_sidenav_class_active : $item.id) ? ' active' : ''}">{$item.menutitle ?: $item.pagetitle}
                                <span class="menu-arrow{('id' | resource | dsmc_sidenav_class_active : $item.id) ? ' collapsed' : ''}"
                                      data-toggle="collapse"
                                      data-target="#{$item.alias}_{$item.id}"
                                      aria-expanded="{('id' | resource | dsmc_sidenav_class_active : $item.id) ? 'true' : 'false'}"
                                      aria-controls="{$item.alias}_{$item.id}">
                                                            <i class="fas fa-angle-right"></i>
                                                        </span>
                            </a>
                            <ul id="{$item.alias}_{$item.id}"
                                class="dropdown-side-nav collapse{('id' | resource | dsmc_sidenav_class_active : $item.id) ? ' show' : ''}">
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
                            <a href="{$item.uri}"
                               class="side-nav-link">{$item.menutitle ?: $item.pagetitle}</a>
                        </li>
                    {/if}
                {/foreach}
            </ul>
        </div>
    {/if}

    {'!pdoMenu' | snippet : [
    'parents' => 9,
    'level' => 3,
    'outerClass' => 'nav flex-column border-bottom-dashed pb-3 d-none d-lg-block w-100 left_menu',
    'innerClass' => 'nav'
    'rowClass' => 'nav-item'
    'hereClass' => 'active active-item'
    'tplInner' => 'wrapper.leftbar.submenu.dsmc'
    'levelClass' => 'level'
    'tpl' => 'tpl.leftbar.dsmc'
    'tplInnerRow' => 'tpl.leftbar.innerrow.dsmc'
    'tplParentRow' => 'tpl.leftbar.tplParentRow.dsmc'
    'tplParentRowActive' => 'tpl.leftbar.tplParentRowActive.dsmc'
    'where' => [
    'template:IN' => [3,18,1,27,29,32],
    'AND:parent:NOT IN' => [229]
    ]
    ]}
</div>

