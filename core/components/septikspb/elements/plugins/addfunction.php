<?php
/** @var modX $modx */

switch ($modx->event->name) {

    case 'pdoToolsOnFenomInit':

        if (!function_exists('clientConfig')) {

            function clientConfig()
            {
                global $modx;

                $pdo = $modx->getService('pdoFetch');

                $clientConfig = $pdo->getCollection('cgSetting');

                $data = array();

                foreach($clientConfig as $item){
                    $data[$item['key']] = $item['value'];
                }

                return $data;

            }
        }

        if (!function_exists('modResource')) {

            function modResource() {

                global $modx;
                $pdo = $modx->getService('pdoFetch');

                $modResource = $pdo->getArray('modResource', $modx->resource->id);

                return $modResource;
            }
        }

        if (!function_exists('modCollection')) {

            function modCollection() {

                global $modx;
                $pdo = $modx->getService('pdoFetch');

            }
        }

        $fenom->addAccessorSmart("tools", "data", Fenom::ACCESSOR_PROPERTY);

        $fenom->data = [

            'clientConfig' => clientConfig(),
            'modResource' => modResource()

        ];

        break;
}