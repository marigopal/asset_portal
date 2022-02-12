$(document).ready(function () {
    load_locations('location');
    load_suppliers('supplier');
    load_assetcategory('asset_category');
    load_manufacturer('manufacturer');
    load_model('asset_model');
    load_modelno('model_no');
    $(document).on('click', '.add', function () {
        var html = '';
        html += '<tr>';
        html += '<td><input type="text" name="serial[]" class="form-control serial" /></td>';
        html += '<td><input type="text" name="remarks[]" class="form-control size" /></td>';
        html += '<td><button type="button" name="remove" class="btn btn-danger btn-sm remove"><span class="glyphicon glyphicon-minus"></span></button></td></tr>';
        $('#item_table').append(html);
    });
    $(document).on('click', '.remove', function () {
        $(this).closest('tr').remove();
    });
    $('#insert_form').on('submit', function (event) {
        event.preventDefault();
        var error = '';

        var form_data = $(this).serialize();
        if (error == '')
        {
            $.ajax({
                url: "db/insert_inv.php",
                method: "POST",
                data: form_data,
                success: function (result)
                {
                    if (result == 1)
                    {
                        toastr_success('Component Added Successfully.', '');
                        add_disabled('saveinvoicebutton');
                    } else if (result == 2)
                    {
                        toastr_success('Invoice Added Successfully.', '');
                        add_disabled('saveinvoicebutton');
                    } else
                    {
                        toastr_error_pagereload('');
                    }
                }
            });
        }
    });

});
$('#pod').datetimepicker({
    format: 'L'
});
$('#invdate').datetimepicker({
    format: 'L'
});
$(window).on('load', function () {
    $('#confirm_model').modal('show');
});
$("#radioPrimary2").click(function () {
    remove_disabled('save_confirm_button');
    removehidden_class('invoicenumber_div');
});
$("#save_confirm_button").click(function () {

});
$("#asset_category").change(function () {
    var assetcategory_text = $("#asset_category option:selected").text();
    $("#asset_category_name").val(assetcategory_text);

})