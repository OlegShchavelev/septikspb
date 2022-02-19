<?php
/** @var modX $modx */
switch ($modx->event->name) {
    case 'pdoToolsOnFenomInit':
        /** @var Fenom $fenom
         * Мы получаем переменную $fenom при его первой инициализации и можем вызывать его методы.
         * Модификатор получает значение ТВ по его название.
         */

        $fenom->addModifier('tv', function ($input) use ($modx) {
            if ($input) {
                return $modx->resource->getTVValue($input);
            }
        });

        $fenom->addModifier('filesize', function ($input) {

            $i = floor(log($input) / log(1024));
            $sizes = array('B', 'KB', 'MB', 'GB', 'TB', 'PB', 'EB', 'ZB', 'YB');

            return sprintf('%.02F', $input / pow(1024, $i)) * 1 . ' ' . $sizes[$i];

        });

        $fenom->addModifier('count_project' , function ($input) {

            $step = 1; //
            $count = $input;

            $dateStart = new DateTime('19.11.2020'); //дата старта
            $now = new DateTime();
            $diff = $dateStart->diff($now)->format('%R%a');
            $final = $step * $diff + $count;

            return $final;

        });

        $fenom->addModifier('dsmcGetResourceDepthId' , function ($input) use ($modx) {
            $getResourceId = $modx->resource->get('id');
            $getParentsId = array_reverse($modx->getParentIds($getResourceId, 10, array('context' => 'web')));
            return $getParentsId[$input];
        });

        $fenom->addModifier('dsmc_sidenav_class_active', function ($input, $resource) use ($modx) {

            if ($input != $resource) {
                $parents = $modx->getParentIds($input);
                $output = in_array($resource, $parents);
            } else {
                $output = true;
            }

            return $output;
        });

        break;

}