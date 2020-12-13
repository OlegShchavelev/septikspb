<?php
if (!is_array($row)) {
    return '{}';
}

$row['tv_categories_solutions'] = $row['tv_categories_solutions'][0];

return json_encode($row);