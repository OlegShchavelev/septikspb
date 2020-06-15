<head>

    {if 'template' | resource != 33}
        <title>{'longtitle' | resource ?: 'dsmc_title' | placeholder}</title>
        <meta name="description" content="{'meta-description' | tv ?: 'dsmc_description' | placeholder}" />
    {else}
        <title>{'st.title' | placeholder}</title>
        <meta name="description" content="{'st.description' | placeholder}" />
    {/if}


    <base href="{'base_url' | option}">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="//fonts.googleapis.com/css?family=Open+Sans:300,400,600,700|Roboto+Condensed:300|Rubik:wght@400;500;700&subset=cyrillic" rel="stylesheet">
    <link rel="stylesheet" href="{'assets_url' | option}components/septikspb/vendor/bootstrap/css/bootstrap.min.css">

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.12.0/css/all.css" integrity="sha384-REHJTs1r2ErKBuJB0fCK99gCYsVjwxHrSU0N7I1zl9vZbggVJXRMsv/sLlOAGb4M" crossorigin="anonymous">

    {'jivosite' | option}


    {'!MinifyX' | snippet : [
    'registerJs'=>'placeholder'
    'registerCss' => 'placeholder'
    'minifyCss' => 1,
    'minifyJs'=> 1,
    'jsTpl' => '<script src="[[+file]]"></script>'
    'cssSources' => '
        css/style-old.css,
        css/style.css,
        css/media.css,
        css/flexslider.css,
        css/jquery.nouislider.min.css,
        css/ezmark.css,
        css/jquery.selectBox.css,
        css/custom.css,
        css/slick.css,
        css/slick-theme.css,
        css/extra_styles.css,
        css/font-awesome.min.css,
        css/jquery.bxslider.css,
        css/owl.carousel.min.css,
        css/owl.theme.default.css,
        css/jquery.fancybox.css
    ',
    'jsSources' => '
    js/jquery-3.4.1.min.js,
    js/jquery.bxslider.js,
    js/owl.carousel.min.js,
    js/jquery.ezmark.min.js,
    js/jquery.selectBox.js,
    js/common.js,
    js/slick.js,
    js/maskedinput.js,
    js/extra_scripts.js,
    js/jquery.fancybox.js,
    js/jquery.validate.js'
    ]
    }

    {$_modx->getPlaceholder('MinifyX.css')}

    <meta name="Document-state" content="Dynamic" />
    <meta name="Revizit-after" content="3 days" />

    {'!tm' | snippet}

</head>