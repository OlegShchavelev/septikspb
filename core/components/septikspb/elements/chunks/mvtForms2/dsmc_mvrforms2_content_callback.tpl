<div class="card bg-gradient-primary mb-4">
    <div class="card-body py-3 px-4 py-lg-4">
        <div class="row justify-content-between">
            <div class="col-lg-7 d-none d-lg-flex align-items-center">
                <div class="card-title mb-0">
                    <h2 class="text-white mb-0">Остались вопросы?</h2>
                </div>
            </div>
            <div class="col-lg-5 d-flex justify-content-center justify-content-lg-end align-items-center">
                <a class="btn btn-lg btn-success btn-pills text-white" data-fancybox="" data-src="#mounting-form" href="#">Заказать звонок</a>
            </div>
        </div>
    </div>
</div>
<div id="mounting-form" style="display:none">
    <div class="row">
        <div class="col-lg-6 bg-success-2 p-5">
            <form id="{$formID}_form" class="mvtForm2" method="post">
                <input type="hidden" name="{$formID}_resource" value="{'id' | resource}">
                <input type="hidden" name="token" value="{$token}">
                <input type="hidden" name="form" value="{$formID}">
                <input type="hidden" name="{$formID}_product" id="mvtForms2ProductId" value="{'id' | resource}">
                <input type="hidden" name="{$formID}_product_count" id="mvtForms2ProductCount" value="1">
                <input type="hidden" name="{$formID}_product_options" id="mvtForms2ProductOptions" value="">
                <div class="form-group">
                    <div class="input-group">
                        <div class="input-group-prepend">
        <span class="input-group-text">
            <i class="far fa-user"></i>
        </span>
                        </div>
                        <input class="form-control form-control-lg" name="{$formID}_name" type="text" placeholder="Ваше имя*">
                    </div>
                </div>
                <div class="form-group">
                    <div class="input-group">
                        <div class="input-group-prepend">
        <span class="input-group-text">
            <i class="far fa-envelope-open"></i>
        </span>
                        </div>
                        <input class="form-control form-control-lg" name="{$formID}_email" type="email" placeholder="Ваша почта*">
                    </div>
                </div>
                <div class="form-group">
                    <div class="input-group">
                        <div class="input-group-prepend">
        <span class="input-group-text">
            <i class="fas fa-phone-alt"></i>
        </span>
                        </div>
                        <input class="form-control form-control-lg mvtFormPhone" name="{$formID}_phone" type="text" placeholder="Номер телефона*">
                    </div>
                </div>
                <div class="form-group">
                    <input type="checkbox" id="{$formID}_accept" name="{$formID}_accept" checked style="display:none;">
                    <label class="form-check-label text-white" for="{$formID}_accept">
                        <svg width="18px" height="18px" viewBox="0 0 18 18">
                            <path d="M1,9 L1,3.5 C1,2 2,1 3.5,1 L14.5,1 C16,1 17,2 17,3.5 L17,14.5 C17,16 16,17 14.5,17 L3.5,17 C2,17 1,16 1,14.5 L1,9 Z"></path>
                            <polyline points="1 9 7 14 15 4"></polyline>
                        </svg>
                        <!--noindex--><span>Я согласен с <a class="text-white" href="{'340' | url}" title="политика конфиденциальности">политикой конфиденциальности</a></span><!--/noindex-->
                    </label>

                </div>
                <div class="form-group text-center mb-0">
                    <button id="{$formID}_form_submit" class="btn btn-success btn-lg mvtForms2boc col-6" type="button">Отправить</button>
                </div>

            </form>
        </div>
        <div class="col-lg-6 p-5 d-flex flex-column justify-content-center">
            <div class="d-flex align-items-center">
                <div class="mr-5">
                    <img src="img/formphone.png">
                </div>
                <div>
                    <h3 class="h3 text-uppercase text-success">Заказать <br>звонок</h3>
                </div>
            </div>
            <p class="mt-4">Профильный специалист свяжется с вами в ближайшее время</p>
        </div>

    </div>
</div>