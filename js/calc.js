$(document).on('click', '.active', function(e){
  var btn = $(e.currentTarget);
  var title = btn[0].getElementsByClassName('cart-title')[0].innerText;
  var img = btn[0].getElementsByClassName('card-img')[0].innerHTML;
  $('.calc-title').html(title);
  $('.img-equipment').html(img);
  
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
    
    // if($('#calc_sla1').prop("checked") == true){
      var total = parseInt($('.cost_equipment').html().replace(/\s+/g, '')) + parseInt($('.cost_tube').html().replace(/\s+/g, '')) + parseInt($('.cost_earth').html().replace(/\s+/g, '')) + parseInt($('.cost_delivery').html().replace(/\s+/g, '')) + parseInt($('.cost_drainage').html().replace(/\s+/g, '')) + parseInt($('.cost_installation').html().replace(/\s+/g, ''));
    $('.calc-final-cost').html(total.toString().replace(/\B(?=(\d{3})+(?!\d))/g, " "));
    $('#dsmc_tolalcost').val(total.toString().replace(/\B(?=(\d{3})+(?!\d))/g, " "));
    // }
  // else
  //     {
  //       $('.calc-final-cost').html(parseInt($('.cost_equipment').html().replace(/\s+/g, ''))); 
  //       $('#dsmc_tolalcost').val($('.calc-final-cost').html());
  //     }
    }, 1000);
});

$(document).on('change', '.checker', function(e){
    var btn = $(e.currentTarget);
    
    if(btn.hasClass('checker1'))
    {
     
    
    var btn = $('#dsmc_calc .active');
  
    if(btn.parent()[0].getAttribute('data-calc_earthwork') == 1)
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
    
    $('.cost_installation').html(btn.parent()[0].getAttribute('data-calc_puskonaladka').toString().replace(/\B(?=(\d{3})+(?!\d))/g, " "));
    $('#dsmc_cost_installation').val(btn.parent()[0].getAttribute('data-calc_puskonaladka').toString().replace(/\B(?=(\d{3})+(?!\d))/g, " "));
    $('#dsmc_calc_product_id').val(btn.parent()[0].getAttribute('data-dsmc_calc_productid').toString().replace(/\B(?=(\d{3})+(?!\d))/g, " "));
    $('.cost_equipment').html(btn.parent()[0].getAttribute('data-calc_productprice').toString().replace(/\B(?=(\d{3})+(?!\d))/g, " "));
    $('#dsmc_calc_cost_equipment').val(btn.parent()[0].getAttribute('data-calc_productprice').toString().replace(/\B(?=(\d{3})+(?!\d))/g, " "));
    $('.cost_tube').html($('.cost_tube')[0].getAttribute('data-calc_input_tube').toString().replace(/\B(?=(\d{3})+(?!\d))/g, " "))
    $('#dsmc_cost_tube').val($('.cost_tube')[0].getAttribute('data-calc_input_tube').toString().replace(/\B(?=(\d{3})+(?!\d))/g, " "));
    $('#dsmc_cost_distance').val($('.cost_delivery').html());
     var total = parseInt($('.cost_equipment').html().replace(/\s+/g, '')) + parseInt($('.cost_tube').html().replace(/\s+/g, '')) + parseInt($('.cost_earth').html().replace(/\s+/g, '')) + parseInt($('.cost_delivery').html().replace(/\s+/g, '')) + parseInt($('.cost_drainage').html().replace(/\s+/g, '')) + parseInt($('.cost_installation').html().replace(/\s+/g, ''));
    $('.calc-final-cost').html(total.toString().replace(/\B(?=(\d{3})+(?!\d))/g, " "));
    $('#dsmc_tolalcost').val(total.toString().replace(/\B(?=(\d{3})+(?!\d))/g, " "));
    document.getElementById('estimate').style.backgroundColor = "#61b955";
    document.getElementById('final-cost').style.color = "#61b955";
    $('.cost_drainage').html($('.cost_drainage').data('value'));
    $('.title').text('Смета на монтаж "Под ключ"');
    }
    else
    {
       $('.calc-final-cost').html((parseInt($('.cost_equipment').html().replace(/\s+/g, '')) + parseInt($('.cost_delivery').html().replace(/\s+/g, ''))).toString().replace(/\B(?=(\d{3})+(?!\d))/g, " ")); 
       $('#dsmc_tolalcost').val($('.calc-final-cost').html());
       $('.cost_earth').html(0);
       $('#dsmc_cost_earth').val(0);
       $('.cost_installation').html(0);
       $('.cost_tube').html(0);
       $('#dsmc_cost_tube').val(0);
       $('#dsmc_cost_installation').val(0);
       $('#dsmc_calc_product_id').val(0);
      // $('#dsmc_cost_distance').val(0);
       $('.cost_drainage').html(0);
       document.getElementById('estimate').style.backgroundColor = "#00a1ef";
       document.getElementById('final-cost').style.color = "#00a1ef";
       $('.title').text('Оборудование и доставка"');
      // $('.cost_equipment').html(btn.parent()[1].getAttribute('data-calc_productprice').toString().replace(/\B(?=(\d{3})+(?!\d))/g, " "));
      // $('#dsmc_calc_cost_equipment').val(btn.parent()[1].getAttribute('data-calc_productprice').toString().replace(/\B(?=(\d{3})+(?!\d))/g, " "));
    }
    
});

$(document).ready(function(){
  var btn = $('#dsmc_calc .active');
  if(btn[0]){
    var title = btn[0].getElementsByClassName('cart-title')[0].innerText;
    var img = btn[0].getElementsByClassName('card-img')[0].innerHTML;
    // console.log(btn[0].getElementsByClassName('card-img')[0].innerHTML);
    $('.calc-title').html(title);
    $('.img-equipment').html(img);
    if(btn.parent()[0].getAttribute('data-calc_earthwork') == 1)
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
    
    $('.cost_installation').html(btn.parent()[0].getAttribute('data-calc_puskonaladka').toString().replace(/\B(?=(\d{3})+(?!\d))/g, " "));
    $('#dsmc_cost_installation').val(btn.parent()[0].getAttribute('data-calc_puskonaladka').toString().replace(/\B(?=(\d{3})+(?!\d))/g, " "));
    $('#dsmc_calc_product_id').val(btn.parent()[0].getAttribute('data-dsmc_calc_productid').toString().replace(/\B(?=(\d{3})+(?!\d))/g, " "));
    $('.cost_equipment').html(btn.parent()[0].getAttribute('data-calc_productprice').toString().replace(/\B(?=(\d{3})+(?!\d))/g, " "));
    $('#dsmc_calc_cost_equipment').val(btn.parent()[0].getAttribute('data-calc_productprice').toString().replace(/\B(?=(\d{3})+(?!\d))/g, " "));
    var total = parseInt($('.cost_equipment').html().replace(/\s+/g, '')) + parseInt($('.cost_tube').html().replace(/\s+/g, '')) + parseInt($('.cost_earth').html().replace(/\s+/g, '')) + parseInt($('.cost_delivery').html().replace(/\s+/g, '')) + parseInt($('.cost_drainage').html().replace(/\s+/g, '')) + parseInt($('.cost_installation').html().replace(/\s+/g, ''));
    $('.calc-final-cost').html(total.toString().replace(/\B(?=(\d{3})+(?!\d))/g, " "));
    $('#dsmc_tolalcost').val(total.toString().replace(/\B(?=(\d{3})+(?!\d))/g, " "));
  }
  else
  {
    // $('#calc_sla1').parents().eq(3).hide();
    // $('.total').hide();
    $('#calc_form').hide();
    // console.log($('#calc_sla1').parents().eq(3));
  }
 
})