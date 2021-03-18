<?php
/**
 * @var $modx
 * @var $section_title
 * @var $scriptProperties
 * @var $wrapperPlaceholders
 * Добавляем плейсхолдер для передачи данных в tpl и tplWrapper
*/
if (empty($snippet) && empty($msgr)) {
    $snippet = 'msProducts';
}

if ($msgr == 1) {

    $modx->setPlaceholders($wrapperPlaceholders,'dsmc_wrapper_');
    return $modx->runSnippet('ms2GalleryResources' , $scriptProperties);

}

if ($section_title) {
    $section_title = str_replace('/', '', $section_title);
    $modx->setPlaceholder('dsmc_wrapper_section_title', $section_title);
}

$modx->setPlaceholders($wrapperPlaceholders,'dsmc_wrapper_');
return $modx->runSnippet($snippet , $scriptProperties);