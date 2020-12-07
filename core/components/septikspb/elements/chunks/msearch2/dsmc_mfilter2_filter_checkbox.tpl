{var $key = $table ~ $delimeter ~ $filter}
<div class="custom-control custom-checkbox my-1">
    <input type="checkbox" class="custom-control-input" name="{$filter_key}" id="mse2_{$key}_{$idx}" value="{$value}" {$checked} {$disabled}/>
    <label for="mse2_{$key}_{$idx}" class="custom-control-label{$disabled}">
    </label>
    <span>{$title}</span>&nbsp;<sup class="text-primary">{$num}</sup>
</div>