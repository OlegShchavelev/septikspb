$(document).ready(function ($) {
    mvtForms2.callbacks.success = function(response) {
        $("body").overhang({
        type: "success",
        message: response.data.answer
        });

        $('#' + response.form + '_form').reset();

    };

    mvtForms2.callbacks.error = function(response) {
        $("body").overhang({
        type: "error",
        message: response.data.message
        });

        $(document).on('keypress change', '.is-invalid', function() {
          var key = $(this).attr('name');
          $(this).removeClass('is-invalid');
        });
    };
});
