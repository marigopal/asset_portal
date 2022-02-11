var url_string = window.location.href;
var url = new URL(url_string);
var _filter = url.searchParams.get("filter");
$.ajax({
    url: "viewlist/category_viewlist.php",
    type: "POST",
    data: {filter: _filter},
    cache: false,
    success: function (data) {
        $('#_index_category_list').html(data);
        generateDTable('category_list');
    }
});
$("#delete_button").click(function ()
{
    var uid = $("#delete_uid").val();
    $.ajax
            ({
                type: "POST",
                url: "db/delete_company.php",
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