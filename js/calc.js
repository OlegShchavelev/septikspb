$(document).on('click', '.active', function(e){
  var btn = $(e.currentTarget);
  var title = btn[0].getElementsByClassName('cart-title')[0].innerText;
  $('.calc-title').html(title);
  
  if($('#calc_sla1').prop("checked") == true){
    if(btn.parent().attr('data-calc_earthwork') == 1)
    {
      var earth = 8000;
       $('.cost_earth').html(earth.toString().replace(/\B(?=(\d{3})+(?!\d))/g, " "));
       $('#dsmc_cost_earth').val(earth.toString().replace(/\B(?=(\d{3})+(?!\d))/g, " "));
    }
    else
    {
      $('.cost_earth').html(0);
      $('#dsmc_cost_earth').val('');
      
    }
    
    $('.cost_installation').html(btn.parent().attr('data-calc_puskonaladka').toString().replace(/\B(?=(\d{3})+(?!\d))/g, " "));
    $('#dsmc_cost_installation').val(btn.parent().attr('data-calc_puskonaladka').toString().replace(/\B(?=(\d{3})+(?!\d))/g, " "));
    
    $('#dsmc_calc_product_id').val(btn.parent().attr('data-dsmc_calc_productid').toString().replace(/\B(?=(\d{3})+(?!\d))/g, " "));
    $('.cost_equipment').html(btn.parent().attr('data-calc_productprice').toString().replace(/\B(?=(\d{3})+(?!\d))/g, " "));
    $('#dsmc_calc_cost_equipment').val(btn.parent().attr('data-calc_productprice').toString().replace(/\B(?=(\d{3})+(?!\d))/g, " "));
  
  var total = parseInt($('.cost_equipment').html().replace(/\s+/g, '')) + parseInt($('.cost_tube').html().replace(/\s+/g, '')) + parseInt($('.cost_earth').html().replace(/\s+/g, '')) + parseInt($('.cost_delivery').html().replace(/\s+/g, '')) + parseInt($('.cost_drainage').html().replace(/\s+/g, '')) + parseInt($('.cost_installation').html().replace(/\s+/g, ''));
  $('.calc-final-cost').html(total.toString().replace(/\B(?=(\d{3})+(?!\d))/g, " "));
  $('#dsmc_tolalcost').val(total.toString().replace(/\B(?=(\d{3})+(?!\d))/g, " "));
  }
  else
  {
    $('#dsmc_calc_product_id').val(btn.parent().attr('data-  ').toString().replace(/\B(?=(\d{3})+(?!\d))/g, " "));
    $('.cost_equipment').html(btn.parent().attr('data-calc_productprice').toString().replace(/\B(?=(\d{3})+(?!\d))/g, " "));
    $('#dsmc_calc_cost_equipment').val(btn.parent().attr('data-calc_productprice').toString().replace(/\B(?=(\d{3})+(?!\d))/g, " "));
    var total = parseInt($('.cost_equipment').html().replace(/\s+/g, ''));
   $('.calc-final-cost').html(total.toString().replace(/\B(?=(\d{3})+(?!\d))/g, " ")); 
   $('#dsmc_tolalcost').val(total.toString().replace(/\B(?=(\d{3})+(?!\d))/g, " "));
  }
});

$(document).on('change', '#septic_city', function(e){
  setTimeout(function(){
    $('#dsmc_cost_distance').val($('.cost_delivery').html());
    $('#dsmc_address').val($('#septic_city').val());
    
    if($('#calc_sla1').prop("checked") == true){
      var total = parseInt($('.cost_equipment').html().replace(/\s+/g, '')) + parseInt($('.cost_tube').html().replace(/\s+/g, '')) + parseInt($('.cost_earth').html().replace(/\s+/g, '')) + parseInt($('.cost_delivery').html().replace(/\s+/g, '')) + parseInt($('.cost_drainage').html().replace(/\s+/g, '')) + parseInt($('.cost_installation').html().replace(/\s+/g, ''));
    $('.calc-final-cost').html(total.toString().replace(/\B(?=(\d{3})+(?!\d))/g, " "));
    $('#dsmc_tolalcost').val(total.toString().replace(/\B(?=(\d{3})+(?!\d))/g, " "));
    }
  else
      {
         $('.calc-final-cost').html(parseInt($('.cost_equipment').html().replace(/\s+/g, ''))); 
         $('#dsmc_tolalcost').val($('.calc-final-cost').html());
      }
    }, 700);
});

$(document).on('change', '.checker', function(e){
    var btn = $(e.currentTarget);
    
    if(btn.hasClass('checker1'))
    {
     
    
    var btn = $('.active');
  
    if(btn.parent()[1].getAttribute('data-calc_earthwork') == 1)
    {
       var earth = 8000;
       $('.cost_earth').html(earth.toString().replace(/\B(?=(\d{3})+(?!\d))/g, " "));
       $('#dsmc_cost_earth').val(earth.toString().replace(/\B(?=(\d{3})+(?!\d))/g, " "));
    }
    else
    {
      $('.cost_earth').html(0);
      $('#dsmc_cost_earth').val(0);
      
    }
    
    $('.cost_installation').html(btn.parent()[1].getAttribute('data-calc_puskonaladka').toString().replace(/\B(?=(\d{3})+(?!\d))/g, " "));
    $('#dsmc_cost_installation').val(btn.parent()[1].getAttribute('data-calc_puskonaladka').toString().replace(/\B(?=(\d{3})+(?!\d))/g, " "));
    $('#dsmc_calc_product_id').val(btn.parent()[1].getAttribute('data-dsmc_calc_productid').toString().replace(/\B(?=(\d{3})+(?!\d))/g, " "));
    $('.cost_equipment').html(btn.parent()[1].getAttribute('data-calc_productprice').toString().replace(/\B(?=(\d{3})+(?!\d))/g, " "));
    $('#dsmc_calc_cost_equipment').val(btn.parent()[1].getAttribute('data-calc_productprice').toString().replace(/\B(?=(\d{3})+(?!\d))/g, " "));
    $('.cost_tube').html($('.cost_tube')[0].getAttribute('data-calc_input_tube').toString().replace(/\B(?=(\d{3})+(?!\d))/g, " "))
    $('#dsmc_cost_tube').val($('.cost_tube')[0].getAttribute('data-calc_input_tube').toString().replace(/\B(?=(\d{3})+(?!\d))/g, " "));
    $('#dsmc_cost_distance').val($('.cost_delivery').html());
     var total = parseInt($('.cost_equipment').html().replace(/\s+/g, '')) + parseInt($('.cost_tube').html().replace(/\s+/g, '')) + parseInt($('.cost_earth').html().replace(/\s+/g, '')) + parseInt($('.cost_delivery').html().replace(/\s+/g, '')) + parseInt($('.cost_drainage').html().replace(/\s+/g, '')) + parseInt($('.cost_installation').html().replace(/\s+/g, ''));
    $('.calc-final-cost').html(total.toString().replace(/\B(?=(\d{3})+(?!\d))/g, " "));
    $('#dsmc_tolalcost').val(total.toString().replace(/\B(?=(\d{3})+(?!\d))/g, " "));
    }
    else
    {
       $('.calc-final-cost').html($('.cost_equipment').html()); 
       $('#dsmc_tolalcost').val($('.calc-final-cost').html());
       $('.cost_earth').html(0);
       $('#dsmc_cost_earth').val(0);
       $('.cost_installation').html(0);
       $('.cost_tube').html(0);
       $('#dsmc_cost_tube').val(0);
       $('#dsmc_cost_installation').val(0);
       $('#dsmc_calc_product_id').val(0);
       $('#dsmc_cost_distance').val(0);
      // $('.cost_equipment').html(btn.parent()[1].getAttribute('data-calc_productprice').toString().replace(/\B(?=(\d{3})+(?!\d))/g, " "));
      // $('#dsmc_calc_cost_equipment').val(btn.parent()[1].getAttribute('data-calc_productprice').toString().replace(/\B(?=(\d{3})+(?!\d))/g, " "));
    }
    
});

$(document).ready(function(){
  var btn = $('.active');
  console.log(btn);
  var title = btn[2].getElementsByClassName('cart-title')[0].innerText;
  $('.calc-title').html(title);
    if(btn.parent()[2].getAttribute('data-calc_earthwork') == 1)
    {
       var earth = 8000;
       $('.cost_earth').html(earth.toString().replace(/\B(?=(\d{3})+(?!\d))/g, " "));
       $('#dsmc_cost_earth').val(earth.toString().replace(/\B(?=(\d{3})+(?!\d))/g, " "));
    }
    else
    {
      $('.cost_earth').html(0);
      $('#dsmc_cost_earth').val(0);
      
    }
    
    $('.cost_installation').html(btn.parent()[2].getAttribute('data-calc_puskonaladka').toString().replace(/\B(?=(\d{3})+(?!\d))/g, " "));
    $('#dsmc_cost_installation').val(btn.parent()[2].getAttribute('data-calc_puskonaladka').toString().replace(/\B(?=(\d{3})+(?!\d))/g, " "));
    $('#dsmc_calc_product_id').val(btn.parent()[2].getAttribute('data-dsmc_calc_productid').toString().replace(/\B(?=(\d{3})+(?!\d))/g, " "));
    $('.cost_equipment').html(btn.parent()[2].getAttribute('data-calc_productprice').toString().replace(/\B(?=(\d{3})+(?!\d))/g, " "));
    $('#dsmc_calc_cost_equipment').val(btn.parent()[2].getAttribute('data-calc_productprice').toString().replace(/\B(?=(\d{3})+(?!\d))/g, " "));
    var total = parseInt($('.cost_equipment').html().replace(/\s+/g, '')) + parseInt($('.cost_tube').html().replace(/\s+/g, '')) + parseInt($('.cost_earth').html().replace(/\s+/g, '')) + parseInt($('.cost_delivery').html().replace(/\s+/g, '')) + parseInt($('.cost_drainage').html().replace(/\s+/g, '')) + parseInt($('.cost_installation').html().replace(/\s+/g, ''));
    $('.calc-final-cost').html(total.toString().replace(/\B(?=(\d{3})+(?!\d))/g, " "));
    $('#dsmc_tolalcost').val(total.toString().replace(/\B(?=(\d{3})+(?!\d))/g, " "));
})