var url_string = window.location.href;
var url = new URL(url_string);
var _filter = url.searchParams.get("filter");
$.ajax({
    url: "viewlist/all_assets_viewlist.php",
    type: "POST",
    data: {filter: _filter},
    cache: false,
    success: function (data) {
        $('#_index_component_list').html(data);
        generateDTable('component_list');
    }
});
$(document).ready(function () {
    load_suppliers('invupd_supplier');
});
function delete_row(id)
{
    $("#delete_uid").val(id);
}
$("#delete_button").click(function ()
{
    var uid = $("#delete_uid").val();
    $.ajax
            ({
                type: "POST",
                url: "db/delete_component.php",
                data: 'uid=' + uid,
                datatype: "html",
                success: function (result)
                {
                    if (result == 1)
                    {
                        modal_hide('delete_modal_box');
                        toastr_success('Deleted Successfully.', '');
                    } else
                    {
                        toastr_error();
                    }
                }
            });
});
function assetassign(id)
{
    $("#compo_uid").val(id);
    load_users('user');
}
$("#save_userbutton").click(function () {
    var compo_uid = $("#compo_uid").val();
    var user = $("#user").val();
    $.ajax
            ({
                type: "POST",
                url: "db/assetassignedto_user.php",
                data: '&compo_uid=' + compo_uid + '&user=' + user,
                datatype: "html",
                success: function (result)
                {
                    if (result.trim() == 1)
                    {

                        modal_hide('asset_assign_user_modal');
                        toastr_success('Asset Assigned to UserSuccessfully..!', '');
                    } else
                    {
                        toastr_error();
                    }
                }
            });
});
function checkinconfirm(id)
{
    $("#compo_removeuid").val(id);
}
$("#confirmcheckinbutton").click(function(){
    var compo_removeuid = $("#compo_removeuid").val();
     $.ajax
            ({
                type: "POST",
                url: "db/checkinasset.php",
                data: '&compo_removeuid=' + compo_removeuid ,
                datatype: "html",
                success: function (result)
                {
                    if (result.trim() == 1)
                    {

                        modal_hide('checkinconfirm');
                        toastr_success('Checkin Successfully..!', '');
                    } else
                    {
                        toastr_error();
                    }
                }
            });
});

function load_invoicelist(ddlName, selectedvalue)
{
    var invupd_supplier= $("#invupd_supplier").val();
    $.ajax({
        type: "POST",
        url: "db/load_invoice.php",
        data: {supplier_select: invupd_supplier},
        success: function (_result)
        {
            var result = JSON.parse(_result.replace('\n', ''));
            $('#' + ddlName).empty();
            var select_li_txt = "<option value='0'>Select</option>";
            $('#' + ddlName).append(select_li_txt);
            if (result != '')
            {
                $.each(result, function (i) {
                    var li_txt = "<option value='" + result[i].invoice_uid + "'>" + result[i].invoice_no + "</option>";
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
function invoice_update(id)
{
    $("#invupd_comid").val(id);
}
$("#saveinvupd_button").click(function(){
    var invupd_comid = $("#invupd_comid").val();
    var invupd_invno = $("#invupd_invno").val();
    $.ajax
            ({
                type: "POST",
                url: "db/invnum_update.php",
                data: '&invupd_comid=' + invupd_comid + '&invupd_invno=' + invupd_invno,
                datatype: "html",
                success: function (result)
                {
                    if (result.trim() == 1)
                    {

                        modal_hide('inv_update_modal');
                        toastr_success('Invoice Updated Successfully..!', '');
                    } else
                    {
                        toastr_error();
                    }
                }
            });
});