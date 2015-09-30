$(document).on('ready page:load', function () {
    $('#calculate').on('click', function(event) {
      // alert('THIS EVENT');
      event.preventDefault();
      // return false;
      // alert("This event");
      var sq_ft = +($('#estimator_sq_ft').val());
      // console.log(Square_ft);
      var rent = +($('#estimator_rent').val());
      // console.log(Rent_per_Square_ft);
      var term = +($('#estimator_term').val());
      // console.log(Length_of_Lease);
      var cam = +($('#estimator_cam').val());
      // console.log(CAM_per_sq_ft);
      var incr_type = +($('#estimator_incr_type').val());
      // console.log(incr_type);
      var percent = +($('#estimator_percent').val());
      // console.log(percent_increase);
      var payment = ((+rent) + (+cam))* sq_ft * 1.07;
      // console.log(payment);
      payment = Number(Math.round(payment+'e2')+'e-2');
      // console.log(payment);

      $("#month_total").remove();
      $("#rent_month").append("<span id='month_total'>"+payment.toFixed(2)+"</span>");

      var month = +($("#month_total").html());
      month = Number(Math.round(payment+'e2')+'e-2');
      // console.dir($("#month_total").html());

      $("#year_total").remove();
      $("#annual_total").append("<span id='year_total'>"+(month*12).toFixed(2)+"</span>");

      var year = +($("#year_total").html());
      // year = Number(Math.round(year+'e2')+'e-2');
      // var length_of_lease_years = length_of_lease/12;
      // console.log(Length_of_Lease_years);
      var decimal_percent = percent/100;
      var total = 0;

      incr_total = payment * incr_type;
      for (var total_months = 1; total_months <= (term); total_months++){
        if (total_months>incr_type ){
          total = incr_total + payment * (total_months-(incr_type* (Math.floor((total_months-1)/incr_type)))) * (Math.pow(1+(decimal_percent), (Math.floor((total_months-1)/incr_type))));
          // console.log("total complicated on month "+ total_months + " is " + total + "");
          // console.log((Math.floor((total_months-1)/incr_type)));
          // console.log(incr_total);
          // console.log((Math.pow(1+(decimal_percent), (Math.floor((total_months-1)/incr_type)))));
          if (total_months%incr_type === 0){
            incr_total = total;
            // console.log("total equal term: "+ total+ " equals " + incr_total + "");
            }
          }
          else {
            total = payment * total_months;
        // console.log("total simple " + total + "");
        }
      }

      $("#total_lease").remove();
      $("#lease_total").append("<span id='total_lease'>"+ total.toFixed(2) +"</span>");

    });
});
