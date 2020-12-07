<?php
$pdo = $modx->getService('pdoFetch');

$modResource = $pdo->getArray('modResource', $modx->resource->id);

print_r($modResource);