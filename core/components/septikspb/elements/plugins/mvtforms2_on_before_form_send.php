<?php

/**
 * @var $modx;
 * @var $data;
 */

switch ($modx->event->name) {

    case 'MvtFormsOnBeforeFormSend':

    $data[$data['form'].'_ga'] = preg_replace("/^.+\.(.+?\..+?)$/", "\\1", @$_COOKIE['_ga']);

    $modx->event->output([
        'data' => $data,
        'form' => $form
    ]);

    break;
}