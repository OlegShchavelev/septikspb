<div class="container">
    <form id="{$formID}_form" class="mvtForm2" method="post">
        <input type="hidden" name="{$formID}_resource" value="{'id' | resource}">
        <input type="hidden" name="token" value="{$token}">
        <input type="hidden" name="form" value="{$formID}">
        <h2 class="mt-4 h5">Контакты для обратной связи</h2>
        <div class="row">
            <div class="form-group col-xl-6">
                <div class="input-group">
                    <div class="input-group-prepend">
        <span class="input-group-text">
            <i class="far fa-user"></i>
        </span>
                    </div>
                    <input class="form-control" name="{$formID}_name" type="text" placeholder="Ваше имя*">
                </div>
            </div>
            <div class="form-group col-xl-6">
                <div class="input-group">
                    <div class="input-group-prepend">
        <span class="input-group-text">
            <i class="fas fa-phone-alt"></i>
        </span>
                    </div>
                    <input class="form-control mvtFormPhone" name="{$formID}_phone" type="text"
                           placeholder="Ваш телефон*">
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
                    <span>Я согласен с <a class="text-dark" href="politiki-konfidenczialnosti/">политикой конфиденциальности</a></span>
                </label>

            </div>
            <div class="col-xl-4 mt-4 mt-xl-0">
                <button style="width: 100%;" id="{$formID}_form_submit" class="btn btn-success btn-lg mvtForms2-tohide"
                        type="submit">Отправить
                </button>
            </div>
        </div>
    </form>
</div>