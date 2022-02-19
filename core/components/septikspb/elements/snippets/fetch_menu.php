<?php
$pdo = $modx->getService('pdoFetch');

$resources = $pdo->getCollection('modResource', array('published' => true, 'deleted' => false, 'class_key:!=' => 'msProduct'), $scriptProperties);
$tree = $pdo->buildTree($resources);


return $tree;