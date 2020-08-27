<div class="mb-4">
    <div class="mx-0">
        <h4>Основное</h4>
        {if $vendor | resource ?}
            <div class="form-group align-items-center list-group-flush d-flex form-list-options">
                <label class="col-6 col-md-4 text-right text-md-left col-form-label mx-0 px-0">Производитель</label>
                <div class="col-6 col-md-8 mx-0">
                    {'vendor.name' | resource}
                </div>
            </div>
        {/if}
        {if 'weight' | resource != 0}
            <div class="form-group align-items-center list-group-flush d-flex form-list-options">
                <label class="col-6 col-md-4 text-right text-md-left col-form-label mx-0 px-0">Вес</label>
                <div class="col-6 col-md-8 mx-0">
                    {'weight' | resource} кг
                </div>
            </div>
        {/if}
        {if 'ms_dimensions' | resource ?}
            <div class="form-group align-items-center list-group-flush d-flex form-list-options">
                <label class="col-6 col-md-4 text-right text-md-left col-form-label mx-0 px-0">Габариты, В/Ш/Г</label>
                <div class="col-6 col-md-8 mx-0">
                    {'ms_dimensions' | resource | replace:"**":"/"} мм
                </div>
            </div>
        {/if}
        {if 'made_in' | resource ?}
            <div class="form-group align-items-center list-group-flush d-flex form-list-options">
                <label class="col-6 col-md-4 text-right text-md-left col-form-label mx-0 px-0">Страна производитель</label>
                <div class="col-6 col-md-8 mx-0">
                    {'made_in' | resource}
                </div>
            </div>
        {/if}

        {set $fileatach = '!FileAttach' | snippet : [
        'tpl' => 'dsmc.FileAttach',
        'showSize' => 1
        ]}

        { if $fileatach ?}
        <div class="form-group align-items-center list-group-flush d-flex form-list-options">
        <label class="col-6 col-md-4 text-right text-md-left col-form-label mx-0 px-0">Документы</label>
        <div class="col-6 col-md-8 mx-0">
            {$fileatach}
        </div>
    </div>
        {/if}
    </div>
</div>

{foreach $data as $category => $options}
    <div class="mb-4">
        <div class="mx-0">
            <h4>{$category}</h4>
        </div>

        {foreach $options as $option}

            <div class="form-group align-items-center list-group-flush d-flex form-list-options">
                <label class="col-6 col-md-4 text-right text-md-left col-form-label mx-0 px-0">{$option.caption}</label>
                <div class="col-6 col-md-8 mx-0">
                    {$option.dsmc_pre} {$option.value|join:', '} {$option.dsmc_post} {$option.value|join:', ' | declension : $option.dsmc_declension ?: $option.measure_unit}
                </div>
            </div>
        {/foreach}
    </div>
{/foreach}