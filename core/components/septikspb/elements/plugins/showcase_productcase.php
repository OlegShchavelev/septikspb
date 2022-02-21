<?php
/**
 * @var modX $modx
 * @var $prepareContent
 * @return array
 */

if (!function_exists(getShortCodeProduct)){

    function getShortCodeProduct($name) {

        global $modx;
        global $scriptProperties;
        $output = &$modx->resource->_output;

        preg_match_all('/\['.$name.'](.+?|)\[\/'.$name.']/', $output, $rows);

        $scriptProperties = [
            'product' => [
                'depth' => 0,
                'limit' => 3,
                'wrapperPlaceholders' => [
                    'title' => 'Модификации',
                    'section_class' => 'bg-white'
                ],
                'parents' => 0,
                'tpl' => 'tpl.msProducts.row.list.dsmc',
                'sortby' => 'RAND()',
                'tplWrapper' => 'dsmc.wrapper.showcase.content',
                'wrapIfEmpty' => 0,
            ]
        ];

        function makeArrayShortCodeProduct($tags) {
            $tags = preg_split('/(?<!\/)\s(?!\/)\b|\/\s|=\/|=/' , $tags , -1, PREG_SPLIT_DELIM_CAPTURE | PREG_SPLIT_NO_EMPTY);

            $row = array_chunk($tags, 2);
            return array_combine(array_column($row, 0), array_column($row, 1));
        }

        foreach ($rows[1] as $i => $row) {
            $elements[] = makeArrayShortCodeGallery($row);
            $contentProperties[] = array_merge($scriptProperties[$name], $elements[$i]);
            $output = str_replace($rows[0][$i], $modx->runSnippet('msProductsSection', $contentProperties[$i]), $output);
        }
    }
}

switch ($modx->event->name) {

    case 'OnWebPagePrerender':
        getShortCodeProduct('product');
        break;
}