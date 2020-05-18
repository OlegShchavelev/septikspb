$(document).on('click', '.active', function(e){
  var btn = $(e.currentTarget);
    
    if(btn.parent().attr('data_calc_earthwork') == 1)
    {
       $('.cost_earth').html(8000);
       $('#dsmc_cost_earth').val(8000);
    }
    else
    {
      $('.cost_earth').html(0);
      $('#dsmc_cost_earth').val('');
      
    }
    
    $('#dsmc_calc_product_id').val(btn.parent().attr('data-dsmc_calc_productid'));
    $('.cost_equipment').html(btn.parent().attr('data_calc_productprice'));
    $('#dsmc_calc_cost_equipment').html(btn.parent().attr('data_calc_productprice'));
  
  $('.calc-final-cost').html(parseInt($('.cost_equipment').html().replace(/\s+/g, '')) + parseInt($('.cost_tube').html().replace(/\s+/g, '')) + parseInt($('.cost_earth').html().replace(/\s+/g, '')) + parseInt($('.cost_delivery').html().replace(/\s+/g, '')) + parseInt($('.cost_drainage').html().replace(/\s+/g, '')));
  $('#dsmc_tolalcost').val($('.calc-final-cost').html());
});

$(document).on('change', '#septic_city', function(e){
  setTimeout(function(){
    $('#dsmc_cost_distance').val($('#cost_delivery'));
    
    $('.calc-final-cost').html(parseInt($('.cost_equipment').html().replace(/\s+/g, '')) + parseInt($('.cost_tube').html().replace(/\s+/g, '')) + parseInt($('.cost_earth').html().replace(/\s+/g, '')) + parseInt($('.cost_delivery').html().replace(/\s+/g, '')) + parseInt($('.cost_drainage').html().replace(/\s+/g, '')));
    $('#dsmc_tolalcost').val($('.calc-final-cost').html());
  }, 300);
    
});