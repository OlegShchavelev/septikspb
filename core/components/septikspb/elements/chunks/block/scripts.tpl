<script>
    $(document).ready(function(){
        $('[data-toggle = "tooltip"]').tooltip();
    });
</script>

{$_modx->getPlaceholder('MinifyX.javascript')}
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-migrate/3.3.1/jquery-migrate.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
{$_modx->regClientScript("/js/themes.js")}
{if 'template' | resource == 41}
{$_modx->regClientScript("/js/calc.js")}
{/if}
{$_modx->regClientScript("/assets/components/mvtforms2/js/web/mvtforms2.dsmc.js")}

<script>
    function injectSvgSprite(path) {
        var ajax = new XMLHttpRequest();
        ajax.open("GET", path, true);
        ajax.send();
        ajax.onload = function(e) {
            var div = document.createElement("div");
            div.className = 'd-none';
            div.innerHTML = ajax.responseText;
            document.body.insertBefore(div, document.body.childNodes[0]);
        }
    }
    // this is set to Bootstrapious website as you cannot
    // inject local SVG sprite (using only 'icons/orion-svg-sprite.svg' path)
    // while using file:// protocol
    // pls don't forget to change to your domain :)
    injectSvgSprite('{'assets_url' | option}components/septikspb/dist/icons/svg-sprite.svg');
</script>


{'!ya' | snippet}