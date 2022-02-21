function delete_row(id)
{
    $("#delete_uid").val(id);
}
function load_countries(ddlName, selectedvalue) {
    $.ajax({
        type: "POST",
        url: "../include/db/load_countries.php",
        data: {},
        success: function (_result)
        {
            var result = JSON.parse(_result.replace('\n', ''));
            $('#' + ddlName).empty();
            var select_li_txt = "<option value=''>Select</option>";
            $('#' + ddlName).append(select_li_txt);
            if (result != '')
            {
                $.each(result, function (i) {
                    var li_txt = "<option value='" + result[i].countries_uid + "'>" + result[i].countries_name + "</option>";
                    $('#' + ddlName).append(li_txt);
                });
                if (selectedvalue != null) {
                    $('#' + ddlName).val(selectedvalue);
                }
            } 
        },
        error: function (err) {
            console.log(err);
        }
    });
}
function load_users(ddlName, selectedvalue) {
    $.ajax({
        type: "POST",
        url: "../include/db/load_users.php",
        data: {},
        success: function (_result)
        {
            var result = JSON.parse(_result.replace('\n', ''));
            $('#' + ddlName).empty();
            var select_li_txt = "<option value=''>Select</option>";
            $('#' + ddlName).append(select_li_txt);
            if (result != '')
            {
                $.each(result, function (i) {
                    var li_txt = "<option value='" + result[i].users_uid + "'>" + result[i].emp_id + " - "+ result[i].firstname + " ( " +  result[i].username + ")"+"</option>";
                    $('#' + ddlName).append(li_txt);
                });
                if (selectedvalue != null) {
                    $('#' + ddlName).val(selectedvalue);
                }
            } 
        },
        error: function (err) {
            console.log(err);
        }
    });
}
function load_locations(ddlName, selectedvalue) {
    $.ajax({
        type: "POST",
        url: "../include/db/load_locations.php",
        data: {},
        success: function (_result)
        {
            var result = JSON.parse(_result.replace('\n', ''));
            $('#' + ddlName).empty();
            var select_li_txt = "<option value=''>Select</option>";
            $('#' + ddlName).append(select_li_txt);
            if (result != '')
            {
                $.each(result, function (i) {
                    var li_txt = "<option value='" + result[i].location_uid + "'>" + result[i].location_name + "</option>";
                    $('#' + ddlName).append(li_txt);
                });
                if (selectedvalue != null) {
                    $('#' + ddlName).val(selectedvalue);
                }

            } 
        },
        error: function (err) {
            console.log(err);
        }
    });
}
function load_suppliers(ddlName, selectedvalue) {
    $.ajax({
        type: "POST",
        url: "../include/db/load_suppliers.php",
        data: {},
        success: function (_result)
        {
            var result = JSON.parse(_result.replace('\n', ''));
            $('#' + ddlName).empty();
            var select_li_txt = "<option value=''>Select</option>";
            $('#' + ddlName).append(select_li_txt);
            if (result != '')
            {
                $.each(result, function (i) {
                    var li_txt = "<option value='" + result[i].supplier_uid + "'>" + result[i].supplier_name + "</option>";
                    $('#' + ddlName).append(li_txt);
                });
                if (selectedvalue != null) {
                    $('#' + ddlName).val(selectedvalue);
                }

            } 
        },
        error: function (err) {
            console.log(err);
        }
    });
}
function load_assetcategory(ddlName, selectedvalue) {
    $.ajax({
        type: "POST",
        url: "../include/db/load_assetcategory.php",
        data: {},
        success: function (_result)
        {
            var result = JSON.parse(_result.replace('\n', ''));
            $('#' + ddlName).empty();
            var select_li_txt = "<option value=''>Select</option>";
            $('#' + ddlName).append(select_li_txt);
            if (result != '')
            {
                $.each(result, function (i) {
                    var li_txt = "<option value='" + result[i].category_uid + "'>" + result[i].category_name + "</option>";
                    $('#' + ddlName).append(li_txt);
                });
                if (selectedvalue != null) {
                    $('#' + ddlName).val(selectedvalue);
                }

            } 
        },
        error: function (err) {
            console.log(err);
        }
    });
}
function load_manufacturer(ddlName, selectedvalue) {
    $.ajax({
        type: "POST",
        url: "../include/db/load_manufacturer.php",
        data: {},
        success: function (_result)
        {
            var result = JSON.parse(_result.replace('\n', ''));
            $('#' + ddlName).empty();
            var select_li_txt = "<option value=''>Select</option>";
            $('#' + ddlName).append(select_li_txt);
            if (result != '')
            {
                $.each(result, function (i) {
                    var li_txt = "<option value='" + result[i].manufacturers_uid + "'>" + result[i].manufacturers_name + "</option>";
                    $('#' + ddlName).append(li_txt);
                });
                if (selectedvalue != null) {
                    $('#' + ddlName).val(selectedvalue);
                }

            } 
        },
        error: function (err) {
            console.log(err);
        }
    });
}
function load_model(ddlName, selectedvalue) {
    $.ajax({
        type: "POST",
        url: "../include/db/load_model.php",
        data: {},
        success: function (_result)
        {
            var result = JSON.parse(_result.replace('\n', ''));
            $('#' + ddlName).empty();
            var select_li_txt = "<option value=''>Select</option>";
            $('#' + ddlName).append(select_li_txt);
            if (result != '')
            {
                $.each(result, function (i) {
                    var li_txt = "<option value='" + result[i].models_uid + "'>" + result[i].models_name + "</option>";
                    $('#' + ddlName).append(li_txt);
                });
                if (selectedvalue != null) {
                    $('#' + ddlName).val(selectedvalue);
                }

            } 
        },
        error: function (err) {
            console.log(err);
        }
    });
}
function load_modelno(ddlName, selectedvalue) {
    $.ajax({
        type: "POST",
        url: "../include/db/load_modelno.php",
        data: {},
        success: function (_result)
        {
            var result = JSON.parse(_result.replace('\n', ''));
            $('#' + ddlName).empty();
            var select_li_txt = "<option value=''>Select</option>";
            $('#' + ddlName).append(select_li_txt);
            if (result != '')
            {
                $.each(result, function (i) {
                    var li_txt = "<option value='" + result[i].modelno_uid + "'>" + result[i].model_number + "</option>";
                    $('#' + ddlName).append(li_txt);
                });
                if (selectedvalue != null) {
                    $('#' + ddlName).val(selectedvalue);
                }

            } 
        },
        error: function (err) {
            console.log(err);
        }
    });
}
function loadtype(ddlName, selectedvalue) {

    $.ajax({
        type: "POST",
        url: "../include/db/load_type.php",
        data: {},
        success: function (_result)
        {
            var result = JSON.parse(_result.replace('\n', ''));
            $('#' + ddlName).empty();
            var select_li_txt = "<option value=''>Select</option>";
            $('#' + ddlName).append(select_li_txt);
            if (result != '')
            {
                $.each(result, function (i) {
                    var li_txt = "<option value='" + result[i].type_uid + "'>" + result[i].type_name + "</option>";
                    $('#' + ddlName).append(li_txt);
                });
                if (selectedvalue != null) {
                    $("#countries").val(selectedvalue);
                }

            } else
            {

            }
        },
        error: function (err) {
            console.log(err);
        }
    });
}
function inputbox_error_notification(input, msg)
{
    $("#" + input).addClass('is-invalid');
    $("#" + input).prop('title', msg);
    $("#" + input).focus();
}
function inputbox_success_notification(input, msg)
{
    $("#" + input).addClass('is-valid');
    $("#" + input).prop('title', msg);
    $("#" + input).focus();
}
function input_remove_error_notification(input)
{
    $("#" + input).removeClass('is-invalid');
    $("#" + input).prop('title', '');
    $("#" + input).focus();

}
function remove_disabled(id)
{
    $("#" + id).removeAttr('disabled');
}
function add_disabled(id)
{
    $("#" + id).attr('disabled', true);
}
function add_hidden(id)
{
    $("#" + id).attr('hidden', true);
}
function toastr_success(msg, location)
{
    toastr.success(msg);
    setTimeout(function () {
        window.location.href = location;
    }, 2000);
}
function toastr_success_no_redirect(msg)
{
    toastr.success(msg);
    setTimeout(function () {

    }, 2000);
}
function toastr_success_parameter(msg, location, parameter)
{
    toastr.success(msg);
    setTimeout(function () {
        window.location.href = location + '?id=' + parameter;
    }, 2000);
}
function toastr_error()
{
    toastr.error('Something Went Wrong..!Please tray again..');
    setTimeout(function () {
//        window.location.reload();
        table.ajax.reload();
    }, 2000);
}
function toastr_error_pagereload()
{
    toastr.error('Something Went Wrong..!Please tray again..');
    setTimeout(function () {
        window.location.reload();
    }, 2000);
}
function toastr_error_msg(msg)
{
    toastr.error(msg);
    setTimeout(function () {
//        window.location.reload();
        table.ajax.reload();
    }, 2000);
}
function toastr_error_msg(msg)
{
    toastr.error(msg);
    setTimeout(function () {
//        window.location.reload();
        table.ajax.reload();
    }, 3000);
}
function generateDTable(tablename) {
    $("#" + tablename).DataTable({
        "responsive": true, "lengthChange": false, "autoWidth": false,
        "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"],
        "scrollX": true
    }).buttons().container().appendTo('#' + tablename + '_wrapper .col-md-6:eq(0)');
}
function modal_hide(id)
{
    $("#" + id).modal('hide');
}
function removehidden_class(id)
{
    $("#" + id).removeClass('d-none');
}
function addhidden_class(id)
{
    $("#" + id).addClass('d-none');
}
function generateUID()
{
    return window.btoa(Array.from(window.crypto.getRandomValues(new Uint8Array(8 * 2))).map((b) => String.fromCharCode(b)).join("")).replace(/[+/]/g, "").substring(0, 8);
}