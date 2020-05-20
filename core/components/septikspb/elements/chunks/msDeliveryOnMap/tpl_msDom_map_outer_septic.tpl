{*@formatter:off*}
<style>
    #{$map_id} {
        display: none;
    }
    #{$map_id}.msdom-map-init {
        position: relative;
        display: block;
        width: 100%;
        height: 400px;
        padding: 0;
        margin: 0;
    }
    #{$map_id} .msdom-map__preloader {
                   position: absolute;
                   top: 0;
                   left: 0;
                   display: none;
                   width: 100%;
                   height: 100%;
                   background-color: rgba(255,255,255, 0.6);
                   padding: 0;
                   margin: 0;
                   z-index: 2;
                   color: #000;
                   font-size: 120%;
                   font-weight: 900;
                   line-height: 140%;
               }
    #{$map_id} .msdom-map__preloader table,
    #{$map_id} .msdom-map__preloader tr,
    #{$map_id} .msdom-map__preloader td {
                   width: 100%;
                   height: 100%;
                   background-color: transparent;
                   border: 0;
                   text-align: center;
                   vertical-align: middle;
               }
    #{$map_id}.loading .msdom-map__preloader {
         display: block;
     }

    [name="msdom_car"] {
        position: absolute;
        opacity: 0;
    }
    [name="msdom_car"] + label {
        display: block;
        width: 100%;
        font-weight: normal;
        cursor: pointer;
    }
    [name="msdom_car"]:checked + label {
        background-color: #eee;
    }
</style>

<div class="row">
    <div class="col-md-12">
        <div class="form-group">
            <div class="input-group">
                <div class="input-group-prepend">
                <span class="input-group-text">
                    <i class="far fa-address-book"></i>
                </span>
                </div>
                {$input}
            </div>
        </div>

        <div style="display:none;" class="msdom_delivery_distance">Расстояние: <span></span> км</div>
        <div style="display:none;" class="msdom_delivery_volume d-none">Общий объём: <span></span> м<sup>3</sup></div>
        <div style="display:none;" class="msdom_delivery_length d-none">Длина: <span></span> м</div>
        <div style="display:none;" class="msdom_delivery_weight d-none">Вес: <span></span> кг</div>
        <div style="display:none;" class="msdom_cars d-none">Рейсов: <span></span></div>
        <div class="msdom_delivery_cost">Стоимость доставки: <span></span> <span class="msdom_suffix">{'ms2_frontend_currency' | lexicon}</span></div>
        <div style="display:none;" class="msdom_delivery_cost_for_car d-none">Стоимость рейса: <span></span> <span class="msdom_suffix">{'ms2_frontend_currency' | lexicon}</span></div>
    </div>

</div>

<div class="mt--1 map_column">
    <div id="{$map_id}">
        <div class="msdom-map__preloader"><table border="0"><tr><td>{'msdom_map_preloader_text' | lexicon}</td></tr></table></div>
    </div>
</div>