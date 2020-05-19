{var $key = $table ~ $delimeter ~ $filter}
<fieldset id="mse2_{$key}" class="col-lg-4">
    <h4 class="filter_title">{('mse2_filter_' ~ $table ~ '_' ~ $filter) | lexicon} <span class="d-inline-block" tabindex="0" data-toggle="tooltip" title="Disabled tooltip"><i class="far fa-question-circle"></i></span></h4>
    {$rows}
</fieldset>