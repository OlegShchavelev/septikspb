$(document).ready(function () {

    $('.slider-for').slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        useTransform: true,
        arrows: false,
        fade: false,
        asNavFor: '.slider-nav'
    });
    $('.slider-nav').slick({
        slidesToShow: 4,
        slidesToScroll: 2,
        asNavFor: '.slider-for',
        dots: false,
        centerMode: false,
        focusOnSelect: true
    });

    $('[data-toggle="popover"]').popover();

    // =====================================================
    //      CMP MS2 Сustom JS Сортировка
    // =====================================================

    $(document).on('change', '#mse2_sort', function () {
        var selected = $(this).find('option:selected');
        var sort = selected.data('sort');
        sort += mse2Config.method_delimeter + selected.val();
        mse2Config.sort = sort;
        mSearch2.submit();
    });

    $(document).on('change', '[name="septic_sla"]', function () {
        if ($('[name="septic_sla"]:checked').attr('id') == 'septic_sla1') {
            $("#comment").hide();
            $("#septic_persons").show();
            $("#form_option").show();
        }
        if ($('[name="septic_sla"]:checked').attr('id') == 'septic_sla2') {
            $("#comment").show();
            $("#septic_persons").hide();
            $("#form_option").hide();
        }
    });

    $(document).on('change', '[name="delivery"]', function () {
        if ($('[name="delivery"]:checked').attr('id') == 'delivery_1') {
            $("#index").hide();
            $("#city").hide();
            $("#street").hide();
        }
        if ($('[name="delivery"]:checked').attr('id') == 'delivery_3') {
            $("#index").hide();
            $("#city").hide();
            $("#street").show();
        }
        if ($('[name="delivery"]:checked').attr('id') == 'delivery_4') {
            $("#index").hide();
            $("#city").show();
            $("#street").show();
        }
        if ($('[name="delivery"]:checked').attr('id') == 'delivery_5') {
            $("#index").show();
            $("#city").show();
            $("#street").show();
        }
    });

    $(".left_menu .dropdown").on("click", function () {
        var menuopener = $(this);
        if (menuopener.hasClass("fa-arrow-alt-circle-right")) {
            menuopener.closest('li').children('ul').slideDown();
            menuopener.closest('li').addClass('active');
            menuopener.removeClass('fa-arrow-alt-circle-right').removeClass('text-primary');
            menuopener.addClass('fa-arrow-alt-circle-down').addClass('text-success');
        } else {
            menuopener.closest('li').children('ul').slideUp();
            menuopener.closest('li').removeClass('active');
            menuopener.removeClass('fa-arrow-alt-circle-down').removeClass('text-success');
            menuopener.addClass('fa-arrow-alt-circle-right').addClass('text-primary');
        }
        return false;
    });

    setTimeout(function () {
            $(".gallery.card-gallery .loader").addClass('loaders');
        },
        300);

    // Калькулятор

    //.portfolio_tags_item toggling

    function highlightTags() {
        $('.custom-checkbox.box').removeClass('active');
        var t_elem = $('.custom-checkbox.box');
        for (var i = 0; i < t_elem.length; i++) {
            if ($(t_elem[i]).find('input[type="checkbox"]:checked').length) {
                $(t_elem[i]).addClass('active');
            }
        }
    }

    highlightTags();

    $('.custom-checkbox.box').click(function (e) {
        highlightTags();
    });
    //--

    $(".card-select .product.list, .card-select .product.grid").click(function () {

        // Select all list items
        var listItems = $(".card-select .product.list, .card-select .product.grid");

        // Remove 'active' tag for all list items
        for (let i = 0; i < listItems.length; i++) {
            listItems[i].classList.remove("active");
        }

        // Add 'active' tag for currently selected item
        this.classList.add("active");
    });

    $(".calc_input_tube").change(function () {

        if ($(this).val() > 30) {
            miniShop2.Message.error('Ошибка! Нельзя ставить кол-во больше 30!');
            $(this).val(30);
        } else if ($(this).val() < 2) {
            miniShop2.Message.error('Ошибка! Нельзя ставить кол-во меньше 2!');
            $(this).val(2);
        }

    });


    $(".dsmc-calc-nav.navbar").on("click", "a", function (e) {
        e.preventDefault();
        let id = $(this).attr('href'),
            top = $(id).offset().top - 40;
        $('body,html').animate({scrollTop: top}, 1500);
    });

    $(window).scroll(function (e) {
        if ($("div").is("#dsmc-calc-order-section")) {
            let order = $('#dsmc-calc-order-section').offset();
            if ($(this).scrollTop() > 350 && $(this).scrollTop() < order.top - 100) {
                $(".dsmc-calc-nav.navbar").addClass('fixed-top').removeClass('d-none');
            } else {
                $(".dsmc-calc-nav.navbar").removeClass('fixed-top').addClass('d-none');
            }
        }
    });

    $('.main-slider').slick({
        centerMode: true,
        arrows: true,
        centerPadding: '760px',
        slidesToShow: 1,
        autoplay: true,
        responsive: [
            {
                breakpoint: 2561,
                settings: {
                    arrows: false,
                    centerMode: true,
                    centerPadding: '500px',
                    slidesToShow: 1
                }
            },
            {
                breakpoint: 1921,
                settings: {
                    arrows: false,
                    centerMode: true,
                    centerPadding: '450px',
                    slidesToShow: 1
                }
            },
            {
                breakpoint: 1601,
                settings: {
                    arrows: false,
                    centerMode: true,
                    centerPadding: '285px',
                    slidesToShow: 1
                }
            },
            {
                breakpoint: 1367,
                settings: {
                    arrows: false,
                    centerMode: true,
                    centerPadding: '170px',
                    slidesToShow: 1
                }
            },
            {
                breakpoint: 1281,
                settings: {
                    arrows: false,
                    centerMode: true,
                    centerPadding: '120px',
                    slidesToShow: 1
                }
            },
            {
                breakpoint: 1025,
                settings: {
                    arrows: false,
                    centerMode: true,
                    centerPadding: '50px',
                    slidesToShow: 1
                }
            },
            {
                breakpoint: 769,
                settings: {
                    arrows: false,
                    centerMode: true,
                    centerPadding: '0px',
                    slidesToShow: 1
                }
            },
            {
                breakpoint: 556,
                settings: {
                    arrows: false,
                    centerMode: true,
                    centerPadding: '0px',
                    slidesToShow: 1
                }
            }
        ]
    });

});
