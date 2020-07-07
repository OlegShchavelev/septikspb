<div class="order_call_form_wrap magnit-forms mt-5">
    <div class="container">
        <div class="row">
            <div class="col-xl-4 bg-success-2 faid py-5">
                <div class="icon-box relative">
                    <div class="d-flex align-items-center">
                        <i class="fas fa-headset display-4 text-white"></i>
                        <div class="pl-4"><span class="h4 text-white box-title mb-1 d-block">Остались вопросы</span>
                            <p class="text-white d-block">наш менеджер перезвонит вам в течении 30 минут </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-8 py-5 pl-xl-5">

                <form id="{$formID}_form" class="mvtForm2" method="post">
                    <input type="hidden" name="{$formID}_resource" value="{'id' | resource}">
                    <input type="hidden" name="token" value="{$token}">
                    <input type="hidden" name="form" value="{$formID}">
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
                                <input class="form-control input-lg mvtFormPhone" name="{$formID}_phone" type="text"
                                       placeholder="Номер телефона*">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <textarea class="form-control input-lg" placeholder="Напишите комментарий"
                                  name="{$formID}_question"></textarea>
                        <div class="invalid-feedback">Напишите вопрос</div>
                    </div>
                    <div class="row align-items-center">
                        <div class="form-group col-xl-8 mb-0">
                            <input type="checkbox" id="{$formID}_accept" name="{$formID}_accept" checked
                                   style="display:none;">
                            <label class="form-check-label text-white" for="{$formID}_accept">
                                <svg width="18px" height="18px" viewBox="0 0 18 18">
                                    <path d="M1,9 L1,3.5 C1,2 2,1 3.5,1 L14.5,1 C16,1 17,2 17,3.5 L17,14.5 C17,16 16,17 14.5,17 L3.5,17 C2,17 1,16 1,14.5 L1,9 Z"></path>
                                    <polyline points="1 9 7 14 15 4"></polyline>
                                </svg>
                                <span>Я согласен с <a class="text-white" href="{'340' | url}">политикой конфиденциальности</a></span>
                            </label>

                        </div>
                        <div class="col-xl-4 mt-4 mt-xl-0">
                            <button style="width: 100%;" id="{$formID}_form_submit"
                                    class="btn btn-success btn-lg mvtForms2-tohide"
                                    type="submit">Отправить
                            </button>
                        </div>
                    </div>
                </form>
            </div>

        </div>
    </div>
</div><!--/order_call_form_wrap-->