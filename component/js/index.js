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
$("#delete_button").click(function ()
{
    var uid = $("#delete_uid").val();
    $.ajax
            ({
                type: "POST",
                url: "db/delete_supplier.php",
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
                        toastr_success('Asset Assigne to UserSuccessfully..!', '');
                    } else
                    {
                        toastr_error();
                    }
                }
            });
});