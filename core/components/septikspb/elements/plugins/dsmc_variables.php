<?php

switch ($modx->event->name) {
    case 'OnLoadWebDocument':

        $mspcs = $modx->getService('msproductscomposeselection', 'MsPCS');
        $resource = $modx->resource->get('id');
        $mspcsTmpData = $mspcs->getResourceSelection($resource);
        $levelData = array_reverse($modx->getParentIds($resource, 10, array('context' => 'web')));
        $idGoodsCategory = explode(',' , $modx->getOption('ms2_goods_id'));

        $mspsc = (!empty($mspcsTmpData) && (!in_array($levelData['2'], $idGoodsCategory))) ? 9 : ((in_array($levelData['2'], $idGoodsCategory)) ? $levelData['2'] : '');
        $modx->setPlaceholder('dsmc_mspcs_where', $mspsc);

        break;
}