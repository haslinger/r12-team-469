// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require jquery.ui.all
//= require twitter/bootstrap
//= require textile-editor
//= require textile-editor-config
//= require dataTables/jquery.dataTables
//= require dataTables/jquery.dataTables.bootstrap
//= require jquery_nested_form
//= require_tree .


function calculate() {
    var price = $('#invoice_position_price').val();
    var quantity = $('#invoice_position_quantity').val();
    $('#invoice_position_value').val(quantity * price);
    
}

function calculate_value() {
    var price = $('#invoice_position_price').val();
    var quantity = $('#invoice_position_quantity').val();
    
    $.ajax({
        url:"/invoice_positions/calculate_value",
        data:'price=' + price + '&quantity=' + quantity,
        dataType: 'script',
        success: function(value) {
        $('#invoice_position_value').val(parseInt(value));
        }
    });
}
