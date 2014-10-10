var zip = {
  is_valid: function(zipcode){
    return /^\b\d{5}(-\d{4})?\b$/.test(zipcode)
  },

  error_message: function(){
    $.bootstrapGrowl('Urecognized ZipCode, will bring info for all regions.&nbsp;&nbsp;&nbsp;',
    { type: 'info', align: 'right', width: 'auto' });
  },

  call_server_with_zipcode: function(zipcode){
    $.ajax({
      url: '/welcome/hardiness_region_for',
      type: 'get',
      data: {zipo: zipcode},
      success: function(data){
        $.bootstrapGrowl('ZipCode corresponds to Hardiness Region: ' +
          data + '&nbsp;&nbsp;&nbsp;',
          { type: 'success', align: 'right', width: 'auto' });
        $('#hhregion').val(data) },
      error: function(){
        zip.error_message();
        $('#hhregion').val('0')
      }
    })
  },

  turn_on_form: function(){
    $('input#mysubmit1').click(function(){
      zipcode = $('input#zipo').val();
      if (zip.is_valid(zipcode)) {
        zip.call_server_with_zipcode(zipcode);
      } else {
        zip.error_message();
        $('#hhregion').val('0');
      }
    })
  }
}

function change_listener(){
  $(".target").change(function(event) {
    $('#hfamily').val(event.target.attributes.id.value)
  });
}

function turn_on_table(){
  $('#plants').dataTable({
    pagingType: 'simple',
    iDisplayLength: 5,
    "lengthMenu": [[5, 10, 25, -1], [5, 10, 25, "All"]]
  });

  var table = $('#plants').DataTable();
  var lastCell = null;

  $('#plants tbody').on('click', 'tr', function(event) {
    var id = this.id;
    $.ajax({
      url: '/plants/plant_details/'+id,
      type: 'get',
      success: function(data){ $('#plants_details').html(data) },
      error: function(){ $('#plants_details').html  ('') }
    });
  })

  $('#plants tbody').on('mouseover', 'td', function () {
    if ( this !== lastCell ) {
      $(this).addClass( 'highlight' );
      $(lastCell).removeClass( 'highlight' );
      lastCell = this;
    }
  })

  $('#plants tbody').on( 'mouseleave', function () {
    $( table.cells().nodes() ).removeClass( 'highlight' );
  });
}

$(document).keypress(function(e) {
  if(e.which == 13 && $('#zipo:focus').length==1) {
    $('input#mysubmit1').click();
  }
});

var ready;
ready = function startup(){
  zip.turn_on_form();
  turn_on_table();
  change_listener();
}

$(document).ready(ready);
$(document).on('page:load', ready);
