'use stick';

$(function () {

    // ------------------------------------------------------- //
    //   Bootstrap tooltips
    // ------------------------------------------------------- //

    $('[data-toggle="tooltip"]').tooltip();

    // =====================================================
    //     Swiper JS
    // =====================================================

    //Main Slider
    let similarMain = new Swiper('.similar-main-carousel', {
        autoplay: {
            delay: 4000,
        },
        spaceBetween: 0,
        loop: true,
        loopedSlides: 5,
        slidesPerView: 'auto',
        slidesPerGroup: 1,
        centeredSlides: false,
        slideActiveClass: 'active',
        breakpoints: {
            1200: {
                centeredSlides: true,
                slidesPerView: 'auto',
                spaceBetween: 30,
            },
            768: {
                loop: true,
                loopedSlides: 5,
            }
        }
    });
    // SwiperCarusel

    document.querySelectorAll('.container').forEach(n => {
        const similarBaseCarusel = new Swiper(n.querySelector('.similar-benefits-carousel'), {
            slidesPerView: 1,
            spaceBetween: 5,
            watchOverflow: true,
            loopedSlides: 4,
            slidesPerGroup: 1,
            autoHeight: true,
            setWrapperSize: true,
            breakpoints: {
                1024: {
                    slidesPerView: 4,
                    spaceBetween: 30,
                },
                768: {
                    slidesPerView: 3,
                    spaceBetween: 40
                }
            },
            pagination: {
                el: n.querySelector('.swiper-pagination'),
                clickable: true,
                dynamicBullets: true
            },
            on: {
                init: function () {
                },
            },
            // Navigation arrows
            navigation: {
                nextEl: n.querySelector('.swiper-button-next'),
                prevEl: n.querySelector('.swiper-button-prev'),
            },
        });
    });

    document.querySelectorAll('.container').forEach(n => {
        const similarLogoCarusel = new Swiper(n.querySelector('.similar-logo-carousel'), {
            slidesPerView: 2,
            spaceBetween: 5,
            watchOverflow: true,
            slidesPerGroup: 1,
            breakpoints: {
                1024: {
                    slidesPerView: 6,
                    spaceBetween: 15,
                },
                768: {
                    slidesPerView: 4,
                    spaceBetween: 15
                }
            },
            pagination: {
                el: n.querySelector('.swiper-pagination'),
                clickable: true,
                dynamicBullets: true
            },
            on: {
                init: function () {
                },
            },
            // Navigation arrows
            navigation: {
                nextEl: n.querySelector('.swiper-button-next'),
                prevEl: n.querySelector('.swiper-button-prev'),
            },
        });
    });


    // ------------------------------------------------------- //
    //   Transparent navbar dropdowns
    //
    //   = do not make navbar
    //   transparent if dropdown's still open
    //   / make transparent again when dropdown's closed
    // ------------------------------------------------------ //


    $('.navbar [data-toggle="dropdown"], .nav [data-toggle="dropdown"]').bootstrapDropdownHover({
        // see next for specifications
    });


    var navbar = $('.navbar'),
        navbarCollapse = $('.navbar-collapse');

    $(function () {
        $(document).trigger("enhance");
    });

    $('.navbar.bg-transparent .navbar-collapse').on('show.bs.collapse', function () {
        makeNavbarWhite();
    });

    $('.navbar.bg-transparent .navbar-collapse').on('hidden.bs.collapse', function () {
        makeNavbarTransparent();
    });

    function makeNavbarWhite() {
        navbar.addClass('was-transparent');
        if (navbar.hasClass('navbar-dark')) {
            navbar.addClass('was-navbar-dark');
            navbar.removeClass('navbar-dark');
        } else {
            navbar.addClass('was-navbar-light');
        }

        navbar.removeClass('bg-transparent');

        navbar.addClass('bg-white');
        navbar.addClass('navbar-light');
    }

    function makeNavbarTransparent() {
        navbar.removeClass('bg-white');
        navbar.removeClass('navbar-light');
        navbar.removeClass('was-transparent');

        navbar.addClass('bg-transparent');
        if (navbar.hasClass('was-navbar-dark')) {
            navbar.addClass('navbar-dark');
        } else {
            navbar.addClass('navbar-light');
        }

    }


    // ------------------------------------------------------- //
    // Adding fade+animation effect to dropdowns in navbar
    // and topbar
    // ------------------------------------------------------ //

    $.fn.adjustNavbarDropdowns = function () {
        $('.navbar .dropdown-menu, .top-bar .dropdown-menu').each(function () {

            var translateY = 'translateY(30px)',
                translateX = '',
                dropdownMenu = $(this),
                windowOuterWidth = $(window).outerWidth();

            if (dropdownMenu.attr('data-translate-x') && windowOuterWidth >= options.navbarExpandPx) {
                translateX = 'translateX(' + dropdownMenu.attr('data-translate-x') + ')'
            }
            if (dropdownMenu.hasClass('show')) {
                translateY = 'translateY(0)'
            }

            dropdownMenu.css('transform', translateX + ' ' + translateY);

            if (dropdownMenu.attr('data-min-width') && windowOuterWidth > options.navbarExpandPx) {
                dropdownMenu.css('min-width', dropdownMenu.attr('data-min-width'));
            } else if (dropdownMenu.attr('data-min-width') && windowOuterWidth <= options.navbarExpandPx) {
                dropdownMenu.css('min-width', 'auto');
            }

        });
    }

    $.fn.adjustNavbarDropdowns();


    $.fn.slideDropdownUp = function () {
        var translateY = 'translateY(0)',
            translateX = '',
            dropdownMenu = $(this),
            windowOuterWidth = $(window).outerWidth();

        if (dropdownMenu.attr('data-translate-x') && windowOuterWidth > options.navbarExpandPx) {
            translateX = 'translateX(' + dropdownMenu.attr('data-translate-x') + ')'
        }
        dropdownMenu.css('transform', translateX + ' ' + translateY);

        return this;
    };
    $.fn.slideDropdownDown = function (movementAnimation) {

        var translateY = 'translateY(30px)',
            translateX = '',
            dropdownMenu = $(this),
            windowOuterWidth = $(window).outerWidth();


        if (dropdownMenu.attr('data-translate-x') && windowOuterWidth > options.navbarExpandPx) {
            translateX = 'translateX(' + dropdownMenu.attr('data-translate-x') + ')'
        }
        if (movementAnimation) {
            if (windowOuterWidth > options.navbarExpandPx) {
                dropdownMenu.css('transform', translateX + ' ' + translateY);
            } else {
                dropdownMenu.css('transform', translateX + ' ' + translateY);
            }

        } else {
            dropdownMenu.hide().css('transform', translate);
        }
        return this;
    };

    $('.navbar .dropdown, .top-bar .dropdown').on('show.bs.dropdown', function (e) {
        $(this).find('.dropdown-menu').first().slideDropdownUp();
    });

    $('.navbar .dropdown, .top-bar .dropdown').on('hide.bs.dropdown', function (e) {

        var movementAnimation = true;

        // if navigation to another page
        if (e.clickEvent && e.clickEvent.target.tagName.toLowerCase() === 'a') {
            movementAnimation = false;
        }

        $(this).find('.dropdown-menu').first().slideDropdownDown(movementAnimation);
    });

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

    // =====================================================
    //      mvtForms2 Callback
    // =====================================================

    mvtForms2.callbacks.success = function (response) {
        $("body").overhang({
            type: "success",
            message: response.data.answer
        });
        $('#' + response.form + '_form').reset();
    };

    mvtForms2.callbacks.error = function (response) {

        $("body").overhang({
            type: "error",
            message: response.data.message
        });

        $(document).on('keypress change', '.is-invalid', function () {
            var key = $(this).attr('name');
            $(this).removeClass('is-invalid');
        });
    };

    $('[data-toggle="popover"]').popover();

    setTimeout(function () {
            $(".gallery.card-gallery .loader").addClass('loaders');
        },
        300);

    // ------------------------------------------------------- //
    //   Object map
    // ------------------------------------------------------ //

    if ($('#portfolio_map').length) {

        let coords = $('#portfolio_map').data();
        ymaps.ready(init);

        function init() {
            var myMap = new ymaps.Map("portfolio_map", {
                center: [coords['coordsX'], coords['coordsY']],
                zoom: 7
            });
            // Создание геообъекта с типом точка (метка).
            var myGeoObject = new ymaps.GeoObject({
                geometry: {
                    type: "Point", // тип геометрии - точка
                    coordinates: [coords['coordsX'], coords['coordsY']] // координаты точки
                }
            });

            // Размещение геообъекта на карте.
            myMap.geoObjects.add(myGeoObject);
        }
    }
    if ('.gallery-top'.length) {
        var galleryThumbs = new Swiper('.gallery-thumbs', {
            spaceBetween: 10,
            slidesPerView: 6,
            watchSlidesVisibility: true,
            watchSlidesProgress: true,
            slideToClickedSlide: true,
            touchRatio: 0,
        })
        var galleryTop = new Swiper('.gallery-top', {
            effect: 'fade',
            watchOverflow: true,
            touchRatio: 0,
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            },
            thumbs: {
                swiper: galleryThumbs,
            },
            on: {
                slideChange: function () {
                    let activeIndex = this.activeIndex + 1;

                    let activeSlide = document.querySelector(`.gallery-thumbs .swiper-slide:nth-child(${activeIndex})`);
                    let nextSlide = document.querySelector(`.gallery-thumbs .swiper-slide:nth-child(${activeIndex + 1})`);
                    let prevSlide = document.querySelector(`.gallery-thumbs .swiper-slide:nth-child(${activeIndex - 1})`);

                    if (nextSlide && !nextSlide.classList.contains('swiper-slide-visible')) {
                        this.thumbs.swiper.slideNext()
                    } else if (prevSlide && !prevSlide.classList.contains('swiper-slide-visible')) {
                        this.thumbs.swiper.slidePrev()
                    }
                }
            }
        })
    }

    // ------------------------------------------------------- //
    //   Order Delivery Fields
    // ------------------------------------------------------ //

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

    // ------------------------------------------------------- //
    //   Menu Leftbar Toggler
    // ------------------------------------------------------ //

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

    // ------------------------------------------------------- //
    //   Calculator TopBar
    // ------------------------------------------------------ //

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

    $(window).scroll(function () {
        if ($(this).scrollTop() > $(this).height()) {
            $(".on-up").addClass("active");
        } else {
            $(".on-up").removeClass("active");
        }
    });

    // =====================================================
    //    Mobile bars
    // =====================================================

    $('#sidebarFilrer').on('show.bs.modal', function (e) {
        console.log('Фильтр открылся');
        $('[ data-sidebar-menu="sidebar-filter"]').removeAttr('data-sidebar-menu').prependTo('#sidebarFilrer .sidebar-filter')
    });

    // =====================================================
    //    Button up
    // =====================================================

    $(window).scroll(function () {
        if ($(this).scrollTop() > $(this).height()) {
            $(".on-up").addClass("active");
        } else {
            $(".on-up").removeClass("active");
        }
    });

    $(".on-up.top").click(function () {
        $("html, body").stop().animate({scrollTop: 0}, "slow", "swing");
    });

    // =====================================================
    //      CMP MS2 Сustom JS Favorites
    // =====================================================

    if (typeof msFavorites != 'undefined' && typeof miniShop2 != 'undefined') {
        msFavorites.addMethodAction('success', 'name_action', function () {
            miniShop2.Message.initialize();
            var self = this;
            if (self.data && self.data.method == 'add') {
                miniShop2.Message.success('Вы добавили товар ' + self.data.pagetitle + ' в избранное');
                $('.msfavorites .msfavorites-label').text('В избранном');

            }
            if (self.data && self.data.method == 'remove') {
                miniShop2.Message.error('Вы удалили товар ' + self.data.pagetitle + ' из избранного');
                $('.msfavorites .msfavorites-label').text('В избранное');
            }
        });
    }

    // =====================================================
    //    Social buttons
    // =====================================================

    var share = document.querySelector('.share-button');
    var isOpened = false;
    document.querySelector('.open_share').addEventListener('click', function () {
        if (!isOpened) {
            share.classList.add('open');
            isOpened = true;
        } else {
            share.classList.remove('open');
            isOpened = false;
        }
    });

    var is_safari = /^((?!chrome|android).)*safari/i.test(navigator.userAgent);

    if (is_safari) {
        $('feGaussianBlur').attr('stdDeviation', 0);
    }

    $('.dropdown-slide-right').click(function (e) {
        e.preventDefault();
        console.log('Клик');
        $(this).closest('.dropdown-slide').addClass('show');
    });
    $('.nav-toggler-back').click(function (e) {
        $(this).closest('.dropdown-slide').removeClass('show');
    });

});
