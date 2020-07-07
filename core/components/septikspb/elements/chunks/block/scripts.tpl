<script>
    $(document).ready(function(){
        $('[data-toggle = "tooltip"]').tooltip();
    });
</script>

{$_modx->getPlaceholder('MinifyX.javascript')}
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
{$_modx->regClientScript("/js/themes.js")}
{if 'template' | resource == 41}
{$_modx->regClientScript("/js/calc.js")}
{/if}
{$_modx->regClientScript("/assets/components/mvtforms2/js/web/mvtforms2.dsmc.js")}


{'!ya' | snippet}