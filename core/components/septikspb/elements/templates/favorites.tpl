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
            <div id="pdopage" class="msfavorites-parent cart">
                <div id="pdopage" class="msfavorites-parent cart">
                    <div class="rows cart-body">
                        {'!pdoPage' | snippet : [
                        'parents' => 0,
                        'resources' => $favorites,
                        'element' => 'msProducts',
                        'limit' => 50,
                        'ajaxMode' => 'default'
                        'tpl' => 'dsmc.tpl.msFavorites'
                        'tplFilter.outer.default' => 'dsmc.tpl.mFilter2.filter.outer',
                        'tplFilter.row.default' => 'dsmc.tpl.mFilter2.filter.checkbox',
                        'tplFilter.outer.ms|price' => 'dsmc.tpl.mFilter2.filter.slider'
                        'tplFilter.row.ms|price' => 'dsmc.tpl.mFilter2.filter.number',
                        'tplPageWrapper' => '@INLINE
                <div class="pagination mse2_pagination">
                  <ul class="pagination">{$prev}{$pages}{$next}</ul>
                </div>',
                        'tplPagePrev' => '@INLINE
                <li class="page-item">
                  <a class="page-arrow" href="{$href}">
                    <span aria-hidden="true">
                      <svg class="svg-icon page-icon">
                        <use xlink:href="#angle-left-1"> </use>
                      </svg>
                    </span>
                  </a>
                </li>',
                        'tplPageNext' => '@INLINE
               <li class="page-item">
                 <a class="page-arrow" href="{$href}">
                   <span aria-hidden="true">
                    <svg class="svg-icon page-icon">
                      <use xlink:href="#angle-right-1"> </use>
                    </svg>
                   </span>
                 </a>
               </li>',
                        'tplPage' => '@INLINE <li class="page-item"><a class="page-link" href="{$href}">{$pageNo}</a></li>',
                        'tplPagePrevEmpty' => '@INLINE
               <li class="page-item">
                 <a class="page-arrow" href="{$href}">
                   <span aria-hidden="true">
                     <svg class="svg-icon page-icon">
                       <use xlink:href="#angle-left-1"> </use>
                     </svg>
                   </span>
                 </a>
               </li>
               ',
                        'tplPageNextEmpty' => '@INLINE
               <li class="page-item">
                 <a class="page-arrow" href="{$href}">
                   <span aria-hidden="true">
                    <svg class="svg-icon page-icon">
                      <use xlink:href="#angle-right-1"> </use>
                    </svg>
                   </span>
                 </a>
               </li>
               '
                        ] ?: '
                <div class="d-flex align-items-center pr-3 alert alert-primary font-weight-bold text-white">
                У вас нет избранного в списке
                </div>
                '}
                    </div>
                    <nav aria-label="page navigation" class="d-flex justify-content-center my-5">
                        {'page.nav' | placeholder}
                    </nav>
                </div>
            </div>
        </div>
    </div>
{/block}