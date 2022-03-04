$(document).ready(function () {
    var url_string = window.location.href;
    var url = new URL(url_string);
    var _id = url.searchParams.get("id");
    if (_id != undefined) {
        load_data(_id);
    } else
    {
        $("#category").removeAttr('readonly', false);
        load_assetcategory('category');
        load_manufacturer('manufacturer');
        load_model('model');
    }
});
$("#savelic_btn").click(function () {
    var isNew = false;
    var lic_uid = $("#lic_uid").val();
    var category = $("#category").val();
    var manufacturer = $("#manufacturer").val();
    var model = $("#model").val();
    var serial = $("#serial").val();
    var qty = $("#qty").val();
    var srvr_ip = $("#srvr_ip").val();
    var remarks = $("#remarks").val();
    add_disabled('savelic_btn');
    if (lic_uid == '')
    {
        isNew = true;
    }
    $.ajax
            ({
                type: "POST",
                url: "db/manage_swlic.php",
                data: 'isNew=' + isNew.toString() + '&lic_uid=' + lic_uid + '&category=' + category + '&manufacturer=' + manufacturer + '&model=' + model + '&serial=' + serial + '&qty=' + qty + '&srvr_ip=' + srvr_ip + '&remarks=' + remarks,
                datatype: "html",
                success: function (result)
                {
                    if (result.trim() == 1)
                    {
                        if (isNew == true)
                        {
                            toastr_success('Added Successfully.', '../sw_lic/');
                        } else
                        {
                            toastr_success('Updated Successfully.', '../sw_lic/');
                        }
                    } else
                    {
                        toastr_error();
                    }
                }
            });
});