<?php
// Добавляем плейсхолдер для передачи данных в tpl и tplWrapper

if (empty($snippet) && empty($msgr)) {
    $snippet = 'msProducts';
}

if ($msgr == 1) {

    $modx->setPlaceholders($wrapperPlaceholders,'dsmc_wrapper_');
    return $modx->runSnippet('ms2GalleryResources' , $scriptProperties);

}


$modx->setPlaceholders($wrapperPlaceholders,'dsmc_wrapper_');
return $modx->runSnippet($snippet , $scriptProperties);