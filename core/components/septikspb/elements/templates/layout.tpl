<!DOCTYPE html>
<html>
<head>
    {if 'template' | resource != 33}
        <title>{'longtitle' | resource ?: 'dsmc_title' | placeholder}</title>
        <meta name="description" content="{'meta-description' | tv ?: 'dsmc_description' | placeholder}"/>
    {else}
        <title>{'st.title' | placeholder}</title>
        <meta name="description" content="{'st.description' | placeholder}"/>
    {/if}

    <base href="{'base_url' | option}">
    
    <link rel="canonical" href="{'id' | resource | url : ['scheme' => 'full']}"/>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="//fonts.googleapis.com/css?family=Open+Sans:300,400,600,700|Roboto+Condensed:300|Rubik:wght@400;500;700&subset=cyrillic"
          rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.12.0/css/all.css"
          integrity="sha384-REHJTs1r2ErKBuJB0fCK99gCYsVjwxHrSU0N7I1zl9vZbggVJXRMsv/sLlOAGb4M" crossorigin="anonymous">
    <link rel="stylesheet" href="{'assets_url' | option}components/septikspb/dist/fonts/stylesheet.css">
    <link rel="stylesheet" href="{'assets_url' | option}components/septikspb/dist/vendor/swiper/css/swiper.min.css">
    <link rel="stylesheet"
          href="{'assets_url' | option}components/septikspb/dist/vendor/@fancyapps/fancybox/jquery.fancybox.min.css"
          id="theme-stylesheet">
    <link rel="stylesheet" href="{'assets_url' | option}components/septikspb/dist/css/style.default.min.css"
          id="theme-stylesheet">

    <meta name="Document-state" content="Dynamic"/>
    <meta name="Revizit-after" content="3 days"/>
    <meta name="google-site-verification" content="Y19r-utpe53CVCyTyQzLNLokBUbkUnBZ8NAbCLGMl0g"/>

    {'!tm' | snippet}
    {'jivosite' | option}

</head>

{'!ya' | snippet}
{'!tmb' | snippet}

{set $headerbar_top_menu = 'fetchMenu' | snippet : [
'resources' => 'config_topmenu_id' | option,
'showHidden' => 0
]}

<body itemscope itemtype="https://schema.org/WebPage">
<div class="alert alert-warning rounded-0 mb-0 alert-dismissible fade show" role="alert">
    <div class="container">
        {'сс_header_notification' | option}
    </div>
    <button type="button" class="close text-white" data-dismiss="alert" aria-label="Close">
        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-x-lg" viewBox="0 0 16 16">
            <path fill-rule="evenodd" d="M13.854 2.146a.5.5 0 0 1 0 .708l-11 11a.5.5 0 0 1-.708-.708l11-11a.5.5 0 0 1 .708 0Z"/>
            <path fill-rule="evenodd" d="M2.146 2.146a.5.5 0 0 0 0 .708l11 11a.5.5 0 0 0 .708-.708l-11-11a.5.5 0 0 0-.708 0Z"/>
        </svg>
    </button>
</div>
<header class="header">
    <div class="headerbar-top text-sm">
        <div class="headerbar-top-toggler bg-success d-flex d-xl-none" type="button" data-toggle="modal"
             data-target="#sidebarContent">
            <svg class="svg-icon">
                <use xlink:href="#icon-list"></use>
            </svg>
        </div>
        <div class="container py-3 py-xl-2">
            <div class="row align-items-center">
                <div class="col-md-10 d-none d-xl-block">
                    <ul class="nav nav-dark">
                        {foreach $headerbar_top_menu as $item}
                            {if $item['id'] != 229}
                                <li class="nav-item">
                                    <a class="nav-link" href="{$item.uri}">{$item.menutitle ?: $item.pagetitle}</a>
                                </li>
                            {else}
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" data-click-behavior="link" data-display="static"
                                       aria-haspopup="true"
                                       aria-expanded="true" data-toggle="dropdown"
                                       href="{$item.uri}">{$item.menutitle ?: $item.pagetitle}</a>
                                    <ul class="dropdown-menu">
                                        {foreach $item.children as $children}
                                            {set $children['level'] = $item['level'] + 1}
                                            <li>
                                                <a class="dropdown-item" href="{$children.uri}" class="nav-link">
                                                    {$children.menutitle ?: $children.pagetitle}
                                                </a>
                                            </li>
                                        {/foreach}
                                    </ul>
                                </li>
                            {/if}
                        {/foreach}
                    </ul>
                </div>
                <div class="col-12 col-xl-2 justify-content-end">
                    <ul class="list-inline mb-0 text-right">
                        {'!msMiniCart' | snippet : [
                        'tpl' => 'dsmc.msMiniCart'
                        ]}
                        <li class="list-inline-item ml-3">
                            <a href="{'811' | url}" title="Избранное">
                                <svg class="svg-icon">
                                    <use xlink:href="#icon-favorite"></use>
                                </svg>
                            </a>
                        </li>
                        {'!getComparison' | snippet : [
                            'tpl' => 'dsmc.Comparison.get'
                        ]}
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="headerbar-main">
        <div class="container py-4 pt-xl-4 pb-xl-0">
            <div class="row">
                <div class="col-10 col-lg-3 d-flex align-items-center">
                    <a href="{'base_url' | option}" class="headerbar-main-logo">
                        <img src="{'config_logo' | option}" class="img-fluid" alt="СептикСервис">
                    </a>
                </div>
                <div class="col-lg-7 offset-lg-2 d-none d-lg-flex align-items-center justify-content-between">
                    <ul class="list-unstyled list-inline mb-0 ml-4 headerbar-main-phones">
                        <li class="list-inline-item mr-3">
                            <a href="tel:{'phone_1' | option | preg_replace:'/[^0-9.+]|/': ''}"
                               class="text-dark">{'phone_1'
                                | option}</a>
                        </li>
                        <li class="list-inline-item">
                            <a href="tel:{'phone_2' | option | preg_replace:'/[^0-9.+]|/': ''}"
                               class="text-dark">{'phone_2'
                                | option}</a>
                        </li>
                    </ul>
                    <div class="headerbar-main-action">
                        <button class="btn btn-success btn-lg btn-pills" onclick="jivo_api.open( { start : 'call' } );">
                            <span class="mr-2">
                                <svg class="svg-icon">
                                    <use xlink:href="#icon-phone"></use>
                                </svg>
                            </span>
                            Заказать звонок
                        </button>
                    </div>
                </div>

                {'!mSearchForm' | snippet : [
                'tplForm' => 'dsmc.mSearch2.form',
                'autocomplete' => 0,
                'pageId' => 801
                ]}

            </div>
        </div>
    </div>

    {set $headerbar_main_menu = 'fetchMenu' | snippet : [
    'parents' => 9,
    'includeTVs' => 'tv_mscategories_image, tv_megamenu_icon',
    'prepareTVs' => '',
    'sortby' => [
    'menuindex' => 'ASC'
    ]
    ]}

    <div class="navbar navbar-sm navbar-light navbar-expand-xl d-none d-xl-flex">
        <div class="container">
            <ul class="navbar-nav justify-content-around w-100">
                {foreach $headerbar_main_menu.9.children as $item first=$first last=$last}
                    {set $item['last'] = $last}
                    {if $item['children'] ?}
                        {if $item.enablesupermenu == 1}
                            <li class="nav-item dropdown position-static">
                                <a data-toggle="dropdown" data-click-behavior="link" data-display="static"
                                   aria-haspopup="true"
                                   aria-expanded="true" class="nav-link dropdown-toggle"
                                   href="{$item['uri']}">{$item['menutilte'] ?: $item['pagetitle']}</a>
                                <div data-translate-x="-50%" class="dropdown-menu megamenu px-4 px-lg-5 py-lg-5">
                                    <div class="container">
                                        <div class="row no-gutters p-4 px-md-5 p-xl-0 w-100">

                                            <div class="col-lg-3">
                                                {foreach array_slice($item.children, 0, ('cc_megamenu_slice' | option)) as $megamenu_item}
                                                    <div class="megamenu-card">
                                                        {if $megamenu_item.tv_megamenu_icon && ('cc_megamenu_icon' | option) == 1}
                                                            <div class="megamenu-icon">
                                                                <svg class="svg-icon">
                                                                    <use xlink:href="#icon-{$megamenu_item.tv_megamenu_icon}"></use>
                                                                </svg>
                                                            </div>
                                                        {/if}
                                                        <div class="megamenu-title h5">
                                                            {$megamenu_item.menutitle ?: $megamenu_item.pagetitle}
                                                        </div>
                                                        <ul class="megamenu-nav">
                                                            {foreach $megamenu_item.children as $megamenu_children}
                                                                <li class="nav-item">
                                                                    <a href="{$megamenu_children.uri}"
                                                                       class="nav-link">{$megamenu_children.menutitle ?: $megamenu_children.pagetitle}</a>
                                                                </li>
                                                            {/foreach}
                                                        </ul>
                                                    </div>
                                                {/foreach}
                                            </div>
                                            <div class="col-lg-9">
                                                <div class="row">
                                                    {foreach array_slice($item.children, ('cc_megamenu_slice' | option)) as $megamenu_item}
                                                        <div class="col-lg-6">
                                                            <div class="megamenu-card">
                                                                {if $megamenu_item.tv_megamenu_icon && ('cc_megamenu_icon' | option) == 1}
                                                                    <div class="megamenu-icon">
                                                                        <svg class="svg-icon">
                                                                            <use xlink:href="#icon-{$megamenu_item.tv_megamenu_icon}"></use>
                                                                        </svg>
                                                                    </div>
                                                                {/if}
                                                                <div class="megamenu-title h5">
                                                                    {if $megamenu_item.searchable == 1}
                                                                        <a href="{$megamenu_item.uri}">
                                                                            {$megamenu_item.menutitle ?: $megamenu_item.pagetitle}
                                                                        </a>
                                                                    {else}
                                                                        {$megamenu_item.menutitle ?: $megamenu_item.pagetitle}
                                                                    {/if}
                                                                </div>
                                                                <ul class="megamenu-nav megamenu-nav-pills">
                                                                    {foreach $megamenu_item.children as $megamenu_children}
                                                                        <li class="nav-item">
                                                                            <a href="{$megamenu_children.uri}"
                                                                               class="nav-link">{$megamenu_children.menutitle ?: $megamenu_children.pagetitle}</a>
                                                                        </li>
                                                                    {/foreach}
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    {/foreach}
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        {else}
                            <li class="nav-item dropdown">
                                <a data-toggle="dropdown" data-click-behavior="link" data-display="static"
                                   aria-haspopup="true"
                                   aria-expanded="true" class="nav-link dropdown-toggle"
                                   href="{$item['uri']}">{$item['menutilte'] ?: $item['pagetitle']}</a>
                                <ul class="dropdown-menu {if $last ?} dropdown-menu-right{/if}">
                                    {foreach $item.children as $children}
                                        {set $children['level'] = $item['level'] + 1}
                                        <li>
                                            <a class="dropdown-item" href="{$children.uri}" class="nav-link">
                                                {$children.pagetitle}
                                            </a>
                                        </li>
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
                {/foreach}
            </ul>
        </div>
    </div>
</header>
{block 'hero'}
{/block}
{block 'breadcrumb'}
    <nav aria-label="breadcrumb" class="bg-light mb-4 d-flex align-items-center" itemprop="breadcrumb">
        <div class="container">
            {'!pdoCrumbs' | snippet : [
            'showCurrent' => 1,
            'showHome' => 1,
            'exclude' => 9,
            'where' => [
            'searchable' => 1
            ]
            ]}
        </div>
    </nav>
{/block}
{block 'content'}
    <section class="section section-hero py-4 border-bottom">
        <div class="container">
            <h1 class="mb-4">{'pagetitle' | resource}</h1>
        </div>
    </section>
    <section class="py-5">
        <div class="container">


        </div>
    </section>
{/block}

{set $footer_vendor = 'fetchMenu' | snippet : [
'parents' => 274,
'resources' => '-277',
'sortby' => [
'menuindex' => 'ASC'
]
]}

{set $footer_service = 'fetchMenu' | snippet : [
'parents' => 229,
'resources' => '-277',
'sortby' => [
'menuindex' => 'ASC'
]
]}

{block 'form_button'}
    {if 'id' | resource == 183}
        {'!mvtForms2' | snippet : ['form'=>'engineer']}
    {else}
        {'!mvtForms2' | snippet : ['form'=>'magnet']}
    {/if}
{/block}

<footer itemscope itemtype="http://schema.org/Organization">
    <div class="section bg-light py-4">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="row">
                        <div class="col-lg-4">
                            <a data-toggle="collapse" href="#footerMenu1" aria-expanded="false"
                               aria-controls="footerMenu1" class="d-lg-none block-toggler my-3 pt-lg-0">Септики
                                <span class="block-toggler-icon block-toggler-sm-icon"></span>
                            </a>
                            <div id="footerMenu1" class="expand-lg collapse">
                                <h5 class="text-dark font-weight-bold h4 mb-4 d-none d-lg-block">Септики</h5>
                                <ul class="nav flex-column nav-no-gutters">
                                    {'!pdoMenu' | snippet : [
                                    'parents' => 0,
                                    'outerClass' => 'nav flex-column nav-no-gutters',
                                    'rowClass' => 'nav-item',
                                    'tpl' => '@INLINE <li {$classes}><a href="{$link}" class="nav-link" {$attributes}>{$pagetitle}</a>{$wrapper}</li>'
                                    'resources' => ('config_menu_products_id' | option)
                                    ]}
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-5">
                            <a data-toggle="collapse" href="#footerMenu2" aria-expanded="false"
                               aria-controls="footerMenu2" class="d-lg-none block-toggler my-3 pt-lg-0">Услуги и
                                оборудование
                                <span class="block-toggler-icon block-toggler-sm-icon"></span>
                            </a>
                            <div id="footerMenu2" class="expand-lg collapse">
                                <h5 class="text-dark font-weight-bold h4 mb-4 d-none d-lg-block">Услуги и
                                    оборудование</h5>
                                <ul class="nav flex-column nav-no-gutters">
                                    {'!pdoMenu' | snippet : [
                                    'parents' => 0,
                                    'tplInner' => '@INLINE {$wrapper}'
                                    'outerClass' => 'nav flex-column nav-no-gutters',
                                    'rowClass' => 'nav-item',
                                    'tpl' => '@INLINE <li {$classes}><a href="{$link}" class="nav-link" {$attributes}>{$pagetitle}</a></li>{$wrapper}'
                                    'resources' => ('config_menu_service_id' | option)
                                    ]}
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="text-sm mt-4 mt-lg-0 mb-4">
                        {'config_footer_name' | option}
                    </div>
                    <div class="text-sm my-4">
                        {'config_footer_copy' | option}
                    </div>
                    <div class="text-lg font-weight-bold my-4" itemprop="address" itemscope
                         itemtype="http://schema.org/PostalAddress">
                        <span itemprop="streetAddress">{'config_address' | option}</span>
                    </div>
                    <div class="text-lg font-weight-bold my-4 d-flex flex-column" itemprop="telephone">
                        <a href="tel:{'config_phone' | option | preg_replace:'/[^0-9.+]|/': ''}"
                           class="text-dark">{'config_phone'
                            | option}
                        </a>
                        <a href="tel:{'config_additional_phone' | option | preg_replace:'/[^0-9.+]|/': ''}"
                           class="text-dark">{'config_additional_phone'
                            | option}
                        </a>
                    </div>
                    <div class="text-lg font-weight-bold my-4">
                        {'config_email' | option}
                    </div>
                    <ul class="list-unstyled list-inline">
                        <li class="list-inline-item">
                            <svg class="svg-icon svg-icon-lg">
                                <use xlink:href="#icon-visa"></use>
                            </svg>
                        </li>
                        <li class="list-inline-item">
                            <svg class="svg-icon svg-icon-lg">
                                <use xlink:href="#icon-mastercard"></use>
                            </svg>
                        </li>
                        <li class="list-inline-item">
                            <svg class="svg-icon svg-icon-lg">
                                <use xlink:href="#icon-sberbank"></use>
                            </svg>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="section section-footer-bottom py-4">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="offer text-sm">
                        {'config_footer_offer' | option}
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>


{set $menu = 'pdoMenuArray' | snippet : [
'parents' => 0,
'showHidden' => 0,
'showUnpublished' => 0,
'showDeleted' => 0,
'previewUnpublished' => 0,
'includeContent' => 0,
'return' => 'tree',
'sortby' => [
'menuindex' => 'ASC'
],
'where' => ['class_key:!=' => 'msProduct']
]}

{if 'template' | resource == 41}
    <nav class="dsmc-calc-nav navbar navbar-expand-lg navbar-light bg-success-2 text-white py-2 d-none">
        <div class="container">
            <div class="calc-title font-weight-semibold col-12 col-md-5 col-lg-6">Юнилос Астра 5</div>
            <div class="calc-cost font-weight-semibold col-12 col-md-4 col-lg-3">
                <span class="calc-label-cost mr-1">под ключ:</span>
                <span class="calc-final-cost font-weight-bold">0</span>
                <span class="font-weight-bold text-uppercase">р</span>
                <span data-toggle="tooltip" data-placement="bottom" data-html="true"
                      class="btn btn-round btn-tooltip ml-2"
                      title="<b>Ваша сумма оборудования</b></br> из данных по параметрам калькулятора">?</span>
            </div>
            <div class="dsmc_calc order col-12 col-md-3 col-lg-3 d-flex justify-content-center justify-content-md-end">
                <a class="btn btn-success btn-sm text-decoration-none d-flex my-2 my-md-0"
                   href="#dsmc-calc-order-section" role="button">
                    <i class="icon-truck-alt mr-1 mr-md-2"></i>
                    Расчет доставки
                </a>
            </div>
        </div>
    </nav>
{/if}

<div id="sidebarContent" tabindex="-1" role="dialog" class="modal fade modal-left modal-navigations">
    <div role="document" class="modal-dialog">
        <div class="modal-content bg-primary">
            <div class="modal-header border-0 bg-primary">
                <button type="button" data-dismiss="modal" aria-label="Close" class="close modal-close close-rotate">
                    <svg width="1em" height="1em" viewBox="0 0 16 16"
                         class="bi bi-x svg-icon w-2rem h-2rem svg-icon-light align-middle" fill="currentColor"
                         xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd"
                              d="M11.854 4.146a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708-.708l7-7a.5.5 0 0 1 .708 0z"></path>
                        <path fill-rule="evenodd"
                              d="M4.146 4.146a.5.5 0 0 0 0 .708l7 7a.5.5 0 0 0 .708-.708l-7-7a.5.5 0 0 0-.708 0z"></path>
                    </svg>
                </button>
            </div>
            <div class="modal-body bg-primary position-relative">
                <div class="sidebar-block-modal">
                    <div class="sidebar-block-modal-nav-main mt-4">
                        <ul class="navbar-nav">
                            {foreach $menu as $item}
                                {set $item.level = 1}
                                {$_modx->getChunk('dsmc.Tools.mobile_menu' , ['item' => $item])}
                            {/foreach}
                        </ul>
                        <ul class="list-unstyled mb-0 headerbar-main-phones my-4 svg-icon-inline">
                            <li>
                                <a href="tel:{'phone_1' | option | preg_replace:'/[^0-9.+]|/': ''}"
                                   class="text-white text-lg font-weight-bold mb-2">{'phone_1'
                                    | option}</a>
                            </li>
                            <li>
                                <a href="tel:{'phone_2' | option | preg_replace:'/[^0-9.+]|/': ''}"
                                   class="text-white text-lg font-weight-bold mt-2">{'phone_2'
                                    | option}</a>
                            </li>
                        </ul>
                        <div class="headerbar-main-action mx-4 my-4">
                            <div class="dropdown-slide">
                                <a href="{'659' | url}" class="btn btn-success btn-lg btn-pills btn-block">
                                <span class="mr-2">
                                    <svg class="svg-icon">
                                        <use xlink:href="#icon-calculator"></use>
                                    </svg>
                                </span>
                                    Подобрать септик
                                </a>
                                <a href="#" class="btn btn-success btn-lg btn-pills btn-block btn-mvtform-mobile">
                                <span class="mr-2">
                                    <svg class="svg-icon">
                                        <use xlink:href="#icon-phone"></use>
                                    </svg>
                                </span>
                                    Заказать звонок
                                </a>
                                <div class="dropdown-wrapper slide-left">
                                    <div class="sidebar-block-modal-header d-flex justify-content-between align-items-center bg-success position-relative">
                                        <div class="headerbar-top-toggler">
                                            <svg width="1em" height="1em" viewBox="0 0 16 16"
                                                 class="bi nav-toggler-back bi-chevron-left text-xl font-weight-bold text-white"
                                                 fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                                <path fill-rule="evenodd"
                                                      d="M11.354 1.646a.5.5 0 0 1 0 .708L5.707 8l5.647 5.646a.5.5 0 0 1-.708.708l-6-6a.5.5 0 0 1 0-.708l6-6a.5.5 0 0 1 .708 0z"/>
                                            </svg>
                                        </div>
                                        <div class="icon-top-mobilebar position-absolute">
                                            <i class="fas fa-headset display-4 text-white font-weight-bold"></i>
                                        </div>
                                    </div>
                                    {'!mvtForms2' | snippet : ['form'=>'mobile']}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!--noindex-->
<div class="share-button on-up">
    <a href="{'cc_whatsapp' | option}" class="item" title="Вотсап">
        <i class="fab fa-whatsapp" aria-hidden="true"></i>
    </a>
    <a href="{'cc_viber' | option}" class="item" title="Вайбер">
        <i class="fab fa-viber" aria-hidden="true"></i>
    </a>
    <a href="{'сс_telegram' | option}" class="item" title="Телеграм">
        <i class="fab fa-telegram-plane" aria-hidden="true"></i>
    </a>
    <a onclick="jivo_api.open();" class="item">
        <i class="far fa-comment-alt text-lg" aria-hidden="true"></i>
    </a>
    <div class="item open_share">
        <i class="far fa-comment-alt text-lg" aria-hidden="true"></i>
    </div>
</div><!--/noindex-->

<div class="back-to-top on-up top d-flex">
    <i class="fas fa-angle-up"></i>
</div>

<div class="share-block-absolute">
    <!-- filter -->
    <svg>
        <defs>
            <filter id="goo">
                <feGaussianBlur in="SourceGraphic" stdDeviation="8" result="shadow"/>
                <feOffset in="shadow" dx="0" dy="0" result="shadow"/>
                <feColorMatrix in="shadow" mode="matrix" values="1 0 0 0 0  0 1 0 0 0  0 0 1 0 0  0 0 0 18 -7"
                               result="shadow2"/>
                <feBlend in="SourceGraphic" in2="shadow2"/>
            </filter>
        </defs>
    </svg>
    <!-- back-to-top -->
</div>

<div id="mounting-form" style="display:none">
    <div class="row">
        <div class="col-lg-6 bg-success-2 p-5">
            {'!mvtForms2' | snippet : ['form'=>'mounting_main']}
        </div>
        <div class="col-lg-6 p-5 d-flex flex-column justify-content-center">
            <div class="d-flex align-items-center">
                <div class="mr-5">
                    <img src="img/formphone.png" alt="форма заявки">
                </div>
                <div>
                    <h3 class="h3 text-uppercase text-success">Заказать <br>выезд инженера</h3>
                </div>
            </div>
            <p class="mt-4">По всем интересующим вопросам отправьте нам сообщение и мы свяжемся с Вами</p>
        </div>

    </div>
</div>

<script src="{'assets_url' | option}components/septikspb/dist/vendor/jquery/jquery.min.js"></script>
<script src="{'assets_url' | option}components/septikspb/dist/vendor/@egjs/jquery-transform/transform.min.js"></script>
<script src="{'assets_url' | option}components/septikspb/dist/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Swiper Carousel -->
<script src="{'assets_url' | option}components/septikspb/dist/vendor/swiper/js/swiper.min.js"></script>

<!-- Some theme config-->
<script>
    var options = {
        navbarExpandPx: 992
    }
</script>

<script>
    function injectSvgSprite(path) {
        var ajax = new XMLHttpRequest();
        ajax.open("GET", path, true);
        ajax.send();
        ajax.onload = function (e) {
            var div = document.createElement("div");
            div.className = 'd-none';
            div.innerHTML = ajax.responseText;
            document.body.insertBefore(div, document.body.childNodes[0]);
        }
    }

    injectSvgSprite('{'assets_url' | option}components/septikspb/dist/icons/svg-sprite.svg');
</script>

<script async type="text/javascript">
    (function ct_load_script() {
        var ct = document.createElement('script');
        ct.type = 'text/javascript';
        ct.async = true;
        ct.src = document.location.protocol + '//cc.calltracking.ru/phone.95b13.11185.async.js?nc=' + Math.floor(new Date().getTime() / 300000);
        var s = document.getElementsByTagName('script')[0];
        s.parentNode.insertBefore(ct, s);
    })();
</script>

<script src="https://yastatic.net/share2/share.js"></script>
<script src="{'assets_url' | option}components/septikspb/dist/vendor/@fancyapps/fancybox/jquery.fancybox.min.js"></script>
<!-- Bootstrap Select-->
<script src="{'assets_url' | option}components/septikspb/dist/vendor/bootstrap-select/js/bootstrap-select.min.js"></script>
<script src="{'assets_url' | option}components/septikspb/dist/vendor/bootstrap-dropdown-hover/jquery.bootstrap-dropdown-hover.min.js"></script>

<!-- Main Theme files-->
{$_modx->regClientScript('assets/components/septikspb/dist/js/theme.js')}
{if 'template' | resource == 41}
    {$_modx->regClientScript("/js/calc.js")}
{/if}
</body>
</html>
