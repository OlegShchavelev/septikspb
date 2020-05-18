
$(document).ready(function() {


  $('.fancy').fancybox({wrapCSS:"fancy_popup"});


if ($(window).width() < 768) {
  if ($(".people_block1").length) {

setTimeout(function() {
  	$('.people_block1').slick({
    slidesToShow: 3,
    slidesToScroll: 1,
    dots: false,
    //centerMode: true,
    slide: ".people_item1",
    variableWidth: true,
				    responsive: [
				    {
    				      breakpoint: 500,
    				      settings: {
    				        slidesToShow: 2
    				      }
    				    }
				  ]

  });
},1000);

	}


	if ($(".our_works").length) {

setTimeout(function() {
  	$('.our_works').slick({
    slidesToShow: 3,
    slidesToScroll: 1,
    dots: false,
    //centerMode: true,
    slide: ".our_works_item",
    variableWidth: true,
				    responsive: [
				    {
    				      breakpoint: 500,
    				      settings: {
    				        slidesToShow: 2
    				      }
    				    }
				  ]

  });
},1000);

	}




	if ($(".cert_block").length) {

setTimeout(function() {
  	$('.cert_block').slick({
    slidesToShow: 3,
    slidesToScroll: 1,
    dots: false,
    //centerMode: true,
    slide: ".cert_item",
    variableWidth: true,
				    responsive: [
				    {
    				      breakpoint: 500,
    				      settings: {
    				        slidesToShow: 2
    				      }
    				    }
				  ]

  });
},1000);

	}


	if ($(".dealers_block").length) {

setTimeout(function() {
  	$('.dealers_block').slick({
    slidesToShow: 5,
    slidesToScroll: 1,
    dots: false,
    //centerMode: true,
    slide: ".dealers_item",
    variableWidth: true,
				    responsive: [
				    {
    				      breakpoint: 500,
    				      settings: {
    				        slidesToShow: 3
    				      }
    				    }
				  ]

  });
},1000);   
}
}

setTimeout(function() {
  if ($(".calc_result_slider").length) {

	$('.calc_result_slider').slick({
    slidesToShow: 1,
    slidesToScroll: 1,
    asNavFor: '.calc_result_head_slider',
    dots: false,
    //centerMode: true,
    slide: ".calc_result_slider > div",
    variableWidth: false,
				    responsive: [
				    {
    				      breakpoint: 767,
    				      settings: {
    				        variableWidth: false,
    				        swipe:false,
    				        touchMove:false,
    				        swipeToSlide:false,
    				        respondTo:'slider',
    				        focusOnSelect:false

    				      }
    				    }
				  ]

  });

	}



  if ($(".calc_result_head_slider").length) {


			$('.calc_result_head_slider').slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        arrows: true,
        dots: false,
        variableWidth: true,
        slide: ".calc_result_head_slider > div",
        asNavFor: '.calc_result_slider',
        focusOnSelect: true,
        centerMode: true,
        responsive: [
				    {
    				      breakpoint: 767,
    				      settings: {
    				        variableWidth: false,
    				        swipe:false,
    				        touchMove:false,
    				        swipeToSlide:false,
    				        respondTo:'slider',
    				        focusOnSelect:false

    				      }
    				    }
				  ]
      });

	}
},999);


	//on click a.button.do_calc sliders refresh
	$('a.button.do_calc').click(function() {
	  setTimeout(function() {
	    if ($(".calc_result_slider").length) {

    	$('.calc_result_slider').slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        asNavFor: '.calc_result_head_slider',
        dots: false,
        //centerMode: true,
        slide: ".calc_result_slider > div",
        variableWidth: false,
    				    responsive: [
    				    {
    				      breakpoint: 767,
    				      settings: {
    				        variableWidth: false,
    				        swipe:false,
    				        touchMove:false,
    				        swipeToSlide:false,
    				        respondTo:'slider',
    				        focusOnSelect:false
    				      }
    				    }
    				  ]

      });
    	}

      if ($(".calc_result_head_slider").length) {

    			$('.calc_result_head_slider').slick({
            slidesToShow: 1,
            slidesToScroll: 1,
            arrows: true,
            dots: false,
            variableWidth: true,
            slide: ".calc_result_head_slider > div",
            asNavFor: '.calc_result_slider',
            focusOnSelect: true,
            centerMode: true,
            responsive: [
				    {
    				      breakpoint: 767,
    				      settings: {
    				        variableWidth: false,
    				        swipe:false,
    				        touchMove:false,
    				        swipeToSlide:false,
    				        respondTo:'slider',
    				        focusOnSelect:false
    				      }
    				    }
				  ]
          });

    	}
	  }, 999);
	});
	//--


	//custom radio and select
	if ($('.new-calc-form input[type="radio"]').length) {
	  $('.new-calc-form input[type="radio"]').ezMark();
	}

	if ($('.calc_result_form input[type="checkbox"]').length) {
	  $('.calc_result_form input[type="checkbox"]').ezMark();
	}

	if ($('.fbw_law_wr input[type="checkbox"]').length) {
	  $('.fbw_law_wr input[type="checkbox"]').ezMark();
	}

	if ($('.new-calc-form select').length) {
	  $('.new-calc-form select').selectBox({'keepInViewport':false, mobile: true});
	}



	if ($('.tabs_form input[type="radio"]').length) {
	  $('.tabs_form input[type="radio"]').ezMark();
	}

	if ($('.tabs_form input[type="checkbox"]').length) {
	  $('.tabs_form input[type="checkbox"]').ezMark();
	}
	//--

	//a.show_on_map
	$('a.show_on_map').click(function(e) {
	  e.preventDefault();
	  $('.map_view').show();
	});
	//--

	//t21_product_maininfo_price2_info_trigger
	$('body').click(function(e) {

	 $('i.t21_product_maininfo_price2_info_text').css('display','none');
	});

	$('i.t21_product_maininfo_price2_info_trigger').click(function(e) {
	  e.preventDefault();
	  e.stopPropagation();
	  $(this).siblings('.t21_product_maininfo_price2_info_text').slideDown(0);
	});
	//-
	
	//popover on mobile
	if ($(window).width() < 768) {
	  $('[data-toggle="popover"]').each(function() {
	    $(this).click();
	  });
	  
	  $('.popover').each(function() {
	    //$(this).addClass('hide_element');
	  });
	  
	  
	  $('[data-toggle="popover"]').click(function(e) {
	    e.stopPropagation();
	    e.preventDefault();
	    $('.popover').removeClass('hide_element');
	  });
	  
	  $('.popover').click(function(e) {
	    e.stopPropagation();
	  });
	  
	  $('body').click(function() {
	    $('.popover').addClass('hide_element');
	    
	  });
	}
	//--

	//range no ui slider
	if ($('#range-item1').length) {

		var nouislider1 = document.getElementById('range-item1');

		noUiSlider.create(nouislider1, {
			start: [1, 2],
			connect: true,
			animate: false,
			range: {
				'min': $('#range-item1').data("min"),
				'max': $('#range-item1').data("max")
			},
    behaviour: 'tap-drag',
    tooltips: true,
format: {
        to: function (value) {
            return Math.ceil(value);
        },
        from: function (value) {
            return Math.ceil(value);
        }
    },
			step: 1
		});

		nouislider1.noUiSlider.on('update', function ( values, handle ) {
		$($('.range_min')).val(parseInt(nouislider1.noUiSlider.get()[0]));
		$($('.range_max')).val(parseInt(nouislider1.noUiSlider.get()[1]));
		$()

	});

	}
	//--

	//contacts map

        if ($('.calc_map').length) {


            ymaps.ready(mapInit);

            function mapInit() {

            	$('.calc_map').each(function() {
            		var map_center1 = $(this).attr('data-map-coords1');
            		var map_center2 = $(this).attr('data-map-coords2');
            		var pin_center1 = $(this).attr('data-pin-coords1');
            		var pin_center2 = $(this).attr('data-pin-coords2');


	                var pageMap = new ymaps.Map($(this).attr('id'),{
	                    center: [map_center1, map_center2],
	                    zoom: 17,
	                    controls:[]
	                });



	                var coordinates = [
	                   [pin_center1, pin_center2]
	                ];

	                var placemark1 = new ymaps.Placemark(coordinates[0],{
	                    hintContent: " "
	                },{
	                    iconLayout:"default#image",
	                    //iconImageHref:"./img/placemark1.png",
	                    //iconImageSize:[38,50],
	                    //iconImageOffset:[-19,-50]
	                });


	                placemark1.events.add('click', function () {
                    	$('.map_balloon').removeClass('closed');
                	});

	                var theMapCluster = new ymaps.Clusterer();

	                theMapCluster.add(placemark1);

	                pageMap.geoObjects.add(theMapCluster);

                });
            }
        }

    //--

	 setInterval(function() {
    $('.calc_result_card_title u, .calc_total_result u').each(function() {
    var this_html = $(this).html() + "";
    $(this).html(this_html.replace(/(\d)(?=(\d\d\d)+([^\d]|$))/g, '$1 '));
  });
  },900);



//mobile menu categories roll over
if ($('.roll_over_menu').length) {


  $('.header_menu_mobile_sub_categories_ul').each(function() {
    $(this).prepend('<li class="go_back_li"><a href="#"><span>Назад</span></a><span class="x_close"></span></li>');
  });

  $('.header_menu_mobile_main_categories_ul > li > a').click(function(e) {
    if ($(this).closest('li').hasClass('direct_ref') === false) {
      e.preventDefault();
      var this_li = $(this);
      $('.roll_over_menu > .ul_sub_wrap[data-toggle="'+ $(this_li).data('toggle') +'"]').addClass('open');
      $(this).closest('ul.header_menu_mobile_main_categories_ul').addClass('open');
    }
  });

  $('.roll_over_menu > .ul_sub_wrap > .header_menu_mobile_sub_categories_ul > li > a').click(function(e) {
    if ($(this).siblings('.ul_sub_wrap').find('ul').length) {e.preventDefault();}
    if ($(this).closest('li').hasClass('go_back_li') == false) {
      $(this).closest('.ul_sub_wrap').addClass('second_sub_open');
      $(this).siblings('.ul_sub_wrap').addClass('open');
    }
  });

  $('.roll_over_menu > .ul_sub_wrap > .header_menu_mobile_sub_categories_ul .more_toggle').click(function(e) {
    e.preventDefault();

      $(this).closest('.sub_wrap_subdivision_item').addClass('show_all');
      $(this).siblings('ul').addClass('show_all');

  });

  $('.roll_over_menu > .ul_sub_wrap > .header_menu_mobile_sub_categories_ul > li.go_back_li > a').click(function(e) {
    e.preventDefault();
    var this_ul = $(this).closest('ul');
    $('.roll_over_menu > .ul_sub_wrap').removeClass('open');
    $('ul.header_menu_mobile_main_categories_ul').removeClass('open');
  });

  $('.roll_over_menu > .ul_sub_wrap > .header_menu_mobile_sub_categories_ul > li > .ul_sub_wrap > ul > li.go_back_li > a').click(function(e) {
    e.preventDefault();
    var this_ul = $(this).closest('ul');
    $('.ul_sub_wrap').removeClass('second_sub_open');
    $(this).closest('.ul_sub_wrap').removeClass('open');
  });

  $('.roll_over_menu > .ul_sub_wrap > .header_menu_mobile_sub_categories_ul > li a.more_toggle ~ .ul_sub_wrap > ul > li.go_back_li > a').click(function(e) {
    e.preventDefault();
    var this_ul = $(this).closest('ul');
    $('.ul_sub_wrap').removeClass('second_sub_open');
    $(this).closest('.ul_sub_wrap').removeClass('open');
  });



  $('.header_menu_mobile_main_categories_ul > .header_menu_catalog_trigger > a').click(function(e) {
    e.preventDefault();
    $(this).closest('.header_menu_mobile_main_categories_ul').addClass('show_cat_li');
  });


  $('.roll_over_menu .header_menu_mobile_sub_categories_ul span.x_close').click(function(e) {
    e.preventDefault();
    $('.roll_over_menu').add('.header_mobile_nav_trigger').removeClass('active');
  });


  $('.roll_over_menu .header_menu_mobile_sub_categories_ul .close_all').click(function(e) {
    e.preventDefault();

    $('.roll_over_menu > .ul_sub_wrap').removeClass('open');
    $('ul.header_menu_mobile_main_categories_ul').removeClass('open');

    $('.roll_over_menu').add('.header_mobile_nav_trigger').add('header .btn-menu').removeClass('active').removeClass('open');
  });

}

//--



//set breadcrumbs width on mobile
if ($(window).width() < 541) {
  setTimeout(function() {
    $('.breadcrumb_wr .b_container .breadcrumb').css('padding-right','1px');
    var bcrumb_w = parseInt($('.breadcrumb_wr .b_container .breadcrumb').width());
    $('.breadcrumb_wr .b_container').css('width',(bcrumb_w) + "px");
    $('.breadcrumb_wr').scrollLeft(bcrumb_w+60);

  },444);
}
//--





$('.roll_over_menu input[name="tel"]').mask("+7 (999) 999-99-99");


	if ($('.roll_over_menu input[type="radio"]').length) {
		$('.roll_over_menu input[type="radio"]').ezMark();
	}

	if ($('.roll_over_menu input[type="checkbox"]').length) {
		$('.roll_over_menu input[type="checkbox"]').ezMark();
	}




//calc block .calc_total_result_hidden_content toggling
/*
$('.calc_total_result p span:not(.question)').click(function() {
  $('.calc_total_result_hidden_content').slideToggle();
});
*/
$('body').on("click",".calc_total_result p span:not(.question)",function() {
  $('.calc_total_result_hidden_content').slideToggle();
});
//--







//forms
	$(".frm1").validate({  //проверка форм

	  rules: {
	   checkbox1: {
	   required:true
	   	   },

	  		tel: {
	   required:true,
	   minlength:2
	   	   }
	   },
	     onkeyup: false,
		 highlight: function(element, errorClass) {
    $(element).fadeOut(function() {
      $(element).fadeIn(function() {
      $(element).fadeOut(function() {
      $(element).fadeIn();
    });
    });
    });


  },

		 submitHandler: function(form) {
		//if (($('.the_form_div_accept .ez-checkbox').hasClass('ez-checked'))) {

			 //$(form).find('input[type="submit"]').addClass('done').attr('disabled','disabled');
			  //$.fancybox({href:"#accept-popup"});
			 //$('p.thanks_p').addClass('active');

			 $(form).closest('.ul_sub_wrap').addClass('second_sub_open');
        $(form).closest('.the_form').siblings('.ul_sub_wrap').addClass('open');

			 //отправка файла на сервер
			$$f({
					formid:'frm11',//id формы
					url:'sender.php'//адрес на серверный скрипт
			});

    //}
		  //else  {
			//$(form).find('.the_form_div_accept').find('.ez-checkbox').effect("highlight", {color:"#f00"}, 1000)
		//}

  },

	   messages: {

		name:"Необходимо заполнить это поле",
		mail:"Необходимо заполнить это поле",
		comment:"Необходимо заполнить это поле",
		surname:"Необходимо заполнить это поле",
		job:"Необходимо заполнить это поле",
		company:"Необходимо заполнить это поле",
		tel:"Необходимо заполнить это поле"

	   }
	  });


//--



});
