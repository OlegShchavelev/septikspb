<?php

// Добавляем плейсхолдер для передачи данных в

$modx->setPlaceholders($wrapperPlaceholders,'dsmc_wrapper_');
return $modx->runSnippet('msProducts',$scriptProperties);