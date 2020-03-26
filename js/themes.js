$(document).ready(function() {
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

	 $(document).on('change', '[name="septic_sla"]', function() {
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
});
