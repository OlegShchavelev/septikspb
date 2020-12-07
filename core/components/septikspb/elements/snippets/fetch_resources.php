<?php

$pdo = $modx->getService('pdoFetch');

$resources = $pdo->getCollection('modResource', array('published' => true, 'deleted' => false), $scriptProperties);

return $resources;