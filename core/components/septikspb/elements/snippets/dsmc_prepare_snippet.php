<?php
if (!is_array($row)) {
    return '{}';
}

// Grid group item options

return json_encode($row);