var zip = {
  is_valid: function(zipcode){
    return /^\b\d{5}(-\d{4})?\b$/.test(zipcode)
  },

  call_server_with_zipcode: function(zipcode){
    $.ajax({
      url: '/welcome/hardiness_region_for',
      type: 'get',
      data: {zipo: zipcode},
      success: function(data){ $('#hardregion').html(data) },
      error: function(){
        $('#hardregion').html('Unrecognized Zipcode');
      }
    })
  },

  turn_on_form: function(){
    $('input#mysubmit1').click(function(){
      zipcode = $('input#zipo').val();
      if (zip.is_valid(zipcode)) { zip.call_server_with_zipcode(zipcode) }
      else { $('#hardregion').html('Invalid Zipcode'); }
    })
  }
}

$(document).keypress(function(e) {
  if(e.which == 13 && $('#zipo:focus').length==1) {
    $('input#mysubmit1').click();
  }
});

$(function () {
  zip.turn_on_form();
  $('#plants').dataTable({
  // ajax: ...,
  // autoWidth: false,
  // pagingType: 'full_numbers',
  // processing: true,
  // serverSide: true,

  // Optional, if you want full pagination controls.
  // Check dataTables documentation to learn more about available options.
  // http://datatables.net/reference/option/pagingType
});
})
