<?php

/**
 * Получаемые массивы нужно преобразовать в строку, иначе вы получите слово Array, вместо значения.
 * Фильтрации цены и веса товаров miniShop2.
 * Возвращаем значение
 * @var $value
 * @var $field
 * @var modX $modx
 */

if (is_array($value)) {
    natsort($value);
    $value = implode(',', $value);
}

if ($miniShop2 = $modx->getService('minishop2')) {
    switch ($field) {
        case 'price':
            $value = $miniShop2->formatPrice($value) . ' ' . $modx->lexicon('ms2_frontend_currency');
            break;
        case 'old_price':
            $value = $miniShop2->formatPrice($value) . ' ' . $modx->lexicon('ms2_frontend_currency');
            break;
        case 'ms_price_key':
            $value = $miniShop2->formatPrice($value) . ' ' . $modx->lexicon('ms2_frontend_currency');
            break;
        default:
            if ($value == '' && $value == 0) {
                $value = '—';
            }
    }
}

return $value;