<form id="{$formID}_form" class="mvtForm2" method="post">
    <input type="hidden" name="{$formID}_resource" value="{'id' | resource}">
    <input type="hidden" name="token" value="{$token}">
    <input type="hidden" name="form" value="{$formID}">
    <div class="row mb-4">
        <div class="col-xl-12">
            {if 'template' | resource != 33}
            <h2>Форма обратной связи</h2>
            {/if}
            <div class="row align-items-center">
                <legend class="col-form-label col-sm-7">Выберите уровень сервиса</legend>
                <div class="custom-control custom-radio">
                    <input type="radio" class="custom-control-input" checked id="{$formID}_sla1" name="{$formID}_sla" value="Да">
                    <label class="custom-control-label" for="{$formID}_sla1">Сервис</label>
                </div>
                <div class="custom-control custom-radio ml-4">
                    <input type="radio" class="custom-control-input" id="{$formID}_sla2" name="{$formID}_sla" value="Нет">
                    <label class="custom-control-label" for="{$formID}_sla2">Диагностика</label>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="form-group col-xl-6">
            <div class="input-group">
                <div class="input-group-prepend">
        <span class="input-group-text">
            <i class="far fa-copyright"></i>
        </span>
                </div>
                <input class="form-control form-control-lg" name="{$formID}_brand" type="text" placeholder="Укажите бренд септика*">
            </div>
        </div>
        <div class="form-group col-xl-6">
            <div class="input-group" id="{$formID}_persons" >
                <div class="input-group-prepend">
        <span class="input-group-text">
            <i class="fas fa-user-alt"></i>
        </span>
                </div>
                <input class="form-control form-control-lg"  name="{$formID}_persons" type="text" placeholder="Кол-во человек*">
            </div>
        </div>
        <div class="form-group col-xl-12">
            <textarea name="{$formID}_comment" id="comment" placeholder="Комментарий" style="display:none" class="form-control form-control-lg"></textarea>
        </div>
    </div>
    <div id="form_option" class="row my-4">
        <div class="col-xl-8">
            <div class="row align-items-center">
                <legend class="col-form-label col-sm-7">Место для откачки ила</legend>
                <div class="custom-control custom-radio ml-3 my-2">
                    <input class="custom-control-input" type="radio" name="{$formID}_type_1" id="{$formID}_type_1_1" value="Да" checked="">
                    <label class="custom-control-label" for="{$formID}_type_1_1">Да</label>
                </div>
                <div class="custom-control custom-radio ml-3">
                    <input class="custom-control-input" type="radio" name="{$formID}_type_1" id="{$formID}_type_1_2" value="Нет">
                    <label class="custom-control-label" for="{$formID}_type_1_2">Нет</label>
                </div>
            </div>
            <div class="row align-items-center">
                <legend class="col-form-label col-sm-7">Наличие воды на участке</legend>
                <div class="custom-control custom-radio ml-3 my-2">
                    <input class="custom-control-input" type="radio" name="{$formID}_type_2" id="{$formID}_type_2_1" value="Да" checked="">
                    <label class="custom-control-label" for="{$formID}_type_2_1">Да</label>
                </div>
                <div class="custom-control custom-radio ml-3">
                    <input class="custom-control-input" type="radio" name="{$formID}_type_2" id="{$formID}_type_2_2" value="Нет">
                    <label class="custom-control-label" for="{$formID}_type_2_2">Нет</label>
                </div>
            </div>
            <div class="row align-items-center">
                <legend class="col-form-label col-sm-7">Наличие электричества на участке</legend>
                <div class="custom-control custom-radio ml-3 my-2">
                    <input class="custom-control-input" type="radio" name="{$formID}_type_3" id="{$formID}_type_3_1" value="Да" checked="">
                    <label class="custom-control-label" for="{$formID}_type_3_1">Да</label>
                </div>
                <div class="custom-control custom-radio ml-3">
                    <input class="custom-control-input" type="radio" name="{$formID}_type_3" id="{$formID}_type_3_2" value="Нет">
                    <label class="custom-control-label" for="{$formID}_type_3_2">Нет</label>
                </div>
            </div>
        </div>
        <div class="col-xl-4">
            <div class="form-group">
                <input class="form-control form-control-lg" name="{$formID}_hose_length" type="text" placeholder="Длина шланга*">
            </div>
        </div>
    </div>
    <h2 class="h5">Укажите растояние</h2>
    {'!msDom' | snippet : [
    'tplOuter' => 'tpl.msDom.map.outer.septic',
    'tplInput' => '@INLINE <input type="text" id="septic_city" name="septic_city" placeholder="[[%msdom_input_placeholder]]" value="" class="form-control form-control-lg">'
    ]}
    <h2 class="mt-4 h5">Контактные данные</h2>
    <div class="row">
        <div class="form-group col-xl-6">
            <div class="input-group">
                <div class="input-group-prepend">
        <span class="input-group-text">
            <i class="far fa-user"></i>
        </span>
                </div>
                <input class="form-control form-control-lg" name="{$formID}_name" type="text" placeholder="Ваше имя*">
            </div>
        </div>
        <div class="form-group col-xl-6">
            <div class="input-group">
                <div class="input-group-prepend">
        <span class="input-group-text">
            <i class="fas fa-phone-alt"></i>
        </span>
                </div>
                <input class="form-control form-control-lg mvtFormPhone" name="{$formID}_phone" type="text" placeholder="Ваш телефон*">
            </div>
        </div>
    </div>
    <div class="row align-items-center">
        <div class="form-group col-xl-8 mb-0">
            <input type="checkbox" id="{$formID}_accept" name="{$formID}_accept" checked="" style="display:none;">
            <label class="form-check-label text-dark" for="{$formID}_accept">
                <svg width="18px" height="18px" viewBox="0 0 18 18">
                    <path d="M1,9 L1,3.5 C1,2 2,1 3.5,1 L14.5,1 C16,1 17,2 17,3.5 L17,14.5 C17,16 16,17 14.5,17 L3.5,17 C2,17 1,16 1,14.5 L1,9 Z"></path>
                    <polyline points="1 9 7 14 15 4"></polyline>
                </svg>
                <!--noindex--><span>Я согласен с <a class="text-dark" href="[[~340]]" title="политика конфиденциальности">политикой конфиденциальности</a></span><!--/noindex-->
            </label>

        </div>
        <div class="col-xl-4 mt-4 mt-xl-0">
            <button style="width: 100%;" id="{$formID}_form_submit" class="btn btn-success btn-lg mvtForms2-tohide" type="submit">Отправить</button>
        </div>
    </div>
</form>