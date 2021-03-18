<?php

/**
 * @var modX $modx
 * @var $prepareContent
 * @return array
 */

if (!function_exists(getShortCode)){

    function getShortCode($name) {

        global $modx;
        global $scriptProperties;
        $output = &$modx->resource->_output;

        preg_match_all('/\['.$name.'](.+?|)\[\/'.$name.']/', $output, $rows);

        $scriptProperties = [
            'snippet' => 'ms2Gallery',
            'tpl' => 'dsmc.ms2Gallery.content',
            'showLog' => '0',
        ];

        function makeArrayShortCode ($tags) {
            $tags = preg_split('/(?<!\/)\s(?!\/)\b|\/\s|=\/|=/' , $tags , -1, PREG_SPLIT_DELIM_CAPTURE | PREG_SPLIT_NO_EMPTY);

            $row = array_chunk($tags, 2);
            return array_combine(array_column($row, 0), array_column($row, 1));
        }

        foreach ($rows[1] as $i => $row) {
            $elements[] = makeArrayShortCode($row);
            $contentProperties[] = array_merge($scriptProperties, $elements[$i]);
            $output = str_replace($rows[0][$i], $modx->runSnippet('msProductsSection', $contentProperties[$i]), $output);
        }

        print_r($elements);
    }
}

switch ($modx->event->name) {

    case 'OnWebPagePrerender':

        getShortCode('gallery');
        break;
}