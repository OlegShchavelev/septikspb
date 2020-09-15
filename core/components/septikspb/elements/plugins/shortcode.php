<?php

switch ($modx->event->name) {

    case 'OnWebPagePrerender':
        $output = &$modx->resource->_output;
        $parent = $modx->resource->get('parent') . ',' . $modx->resource->get('id');

        preg_match_all("/\%%(.+?)\%%/", $output, $row);

        $scriptProperties = [
            'snippet' => 'ms2Gallery',
            'resources' => $parent,
            'tags' => 'описание',
            'tpl' => 'dsmc.ms2Gallery.content',
            'wrapperPlaceholders' => [
                'title' => 'Наши дипломы и сертификаты',
                'content' => 1
            ]
        ];

        $snippet = $modx->runSnippet('msProductsSection' , $scriptProperties);
        $output = str_replace($row[0][0], $snippet ,$output);

        break;
}
