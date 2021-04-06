<form class="ms2_form" id="msOrder" method="post">
    <div class="row">
        <div class="col-12 col-md-12">
            <h4>{'ms2_frontend_credentials' | lexicon}:</h4>
            {foreach ['email','receiver','phone'] as $field}
            <div class="form-group row input-parent">
                <label class="col-md-4 col-form-label" for="{$field}">
                    {('ms2_frontend_' ~ $field) | lexicon} <span class="required-star">*</span>
                </label>
                <div class="col-md-8">
                    <input type="text" id="{$field}" placeholder="{('ms2_frontend_' ~ $field) | lexicon}"
                           name="{$field}" value="{$form[$field]}"
                           class="form-control form-control-lg{($field in list $errors) ? ' error' : ''}">
                </div>
            </div>
            {/foreach}

            <div class="form-group row input-parent">
                <label class="col-md-4 col-form-label" for="comment">
                    {'ms2_frontend_comment' | lexicon} <span class="required-star">*</span>
                </label>
                <div class="col-md-8">
                    <textarea name="comment" id="comment" placeholder="{'ms2_frontend_comment' | lexicon}"
                              class="form-control form-control-lg{('comment' in list $errors) ? ' error' : ''}">{$form.comment}</textarea>
                </div>
            </div>
        </div>

        <div class="col-12 col-md-6 d-none" id="payments">
            <h4>{'ms2_frontend_payments' | lexicon}:</h4>
            <div class="form-group row">
                <div class="col-12">
                    {foreach $payments as $payment index=$index}
                    {var $checked = !($order.payment in keys $payments) && $index == 0 || $payment.id == $order.payment}
                    <div class="checkbox">
                        <label class="col-form-label payment input-parent">
                            <input type="radio" name="payment" value="{$payment.id}" id="payment_{$payment.id}"{$checked ? 'checked' : ''}>
                            {if $payment.logo?}
                            <img src="{$payment.logo}" alt="{$payment.name}" title="{$payment.name}" class="mw-100"/>
                            {else}
                            {$payment.name}
                            {/if}
                            {if $payment.description?}
                            <p class="small">{$payment.description}</p>
                            {/if}
                        </label>
                    </div>
                    {/foreach}
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-12 col-md-6" id="deliveries">
            <h4>{'ms2_frontend_deliveries' | lexicon}:</h4>
            <div class="form-group row pl-3">
                    {foreach $deliveries as $delivery index=$index}
                    {set $checked = !($order.delivery in keys $deliveries) && $index == 0 || $delivery.id == $order.delivery}
                    <div class="custom-control custom-radio my-1">
                        <input name="delivery" value="{$delivery.id}" id="delivery_{$delivery.id}"
                               type="radio" class="custom-control-input"
                               data-payments="{$delivery.payments | json_encode}" {$checked ? 'checked' : ''}>
                        <label for="delivery_{$delivery.id}"
                               class="custom-control-label">{$delivery.name}</label>
                        {if $delivery.logo?}
                        <img src="{$delivery.logo}" alt="{$delivery.name}" title="{$delivery.name}"/>
                        {else}
                        {$delivery.name}
                        {/if}
                        {if $delivery.description?}
                        <p class="small alert alert-success mt-3">
                            {$delivery.description}
                        </p>
                        {/if}
                    </div>
                    {/foreach}
            </div>
        </div>
        <div id="deliv" class="col-12 col-md-6 mt-5">
            {foreach ['index','city','street'] as $field}
            <div class="form-group row input-parent">
                <div class="col-md-12">
                    <input type="text" id="{$field}" placeholder="{('ms2_frontend_' ~ $field) | lexicon}"
                           name="{$field}" value="{$form[$field]}"{if ($field in ['index', 'city']) && ($order.delivery == 3) || ($order.delivery == 1) || ($order.delivery == 4 && $field in ['index'])} style="display:none;"{/if}
                    class="form-control form-control-lg{($field in list $errors) ? ' error' : ''}">
                </div>
            </div>
            {/foreach}
        </div>

        <div class="pl-3 mt-4">
            <input type="checkbox" id="law" name="law" checked="" style="display:none;">
            <label class="form-check-label text-dark" for="law">
                <svg width="18px" height="18px" viewBox="0 0 18 18">
                    <path d="M1,9 L1,3.5 C1,2 2,1 3.5,1 L14.5,1 C16,1 17,2 17,3.5 L17,14.5 C17,16 16,17 14.5,17 L3.5,17 C2,17 1,16 1,14.5 L1,9 Z"></path>
                    <polyline points="1 9 7 14 15 4"></polyline>
                </svg>
                <!--noindex--><span>Я согласен с <a class="text-dark" href="[[~340]]" title="политика конфиденциальности">политикой конфиденциальности</a></span><!--/noindex-->
            </label>
        </div>

    </div>

    <hr class="mt-4 mb-4"/>

    <div class="d-flex flex-column flex-md-row align-items-center justify-content-center justify-content-md-between">
        <h4 class="mb-md-0">{'ms2_frontend_order_cost' | lexicon}: <span id="ms2_order_cost" class="font-weight-bold">{$order.cost ?: 0}</span> {'ms2_frontend_currency' | lexicon}</h4>
        <button type="submit" name="ms2_action" value="order/submit" class="btn btn-lg btn-primary ml-md-2 ms2_link">
            {'ms2_frontend_order_submit' | lexicon}
        </button>
    </div>
</form>
