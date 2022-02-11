$(document).ready(function () {
    loadtype('type');
    var url_string = window.location.href;
    var url = new URL(url_string);
    var _id = url.searchParams.get("id");
    if (_id != undefined) {
        load_data(_id);
    }
});
function load_data(_id) {
    $.ajax({
        url: "db/get_category.php",
        type: "POST",
        data: {id: _id},
        dataType: 'json',
        success: function (result)
        {
            var len = result.length;
            if (len != 0)
            {
                for (var i = 0; i < len; i++)
                {
                    var category_name = result[i]['category_name'];
                    var type = result[i]['type'];
                    var category_imagename = result[i]['category_imagename'];
                    if (len > 0)
                    {
                        $("#category_uid").val(_id);
                        $("#category_name").val(category_name);
                        $("#type").val(type);
                        $("#img_name").val(category_imagename);
                        if (category_imagename != '') {
                            $("#receipt_display").attr("src", "../image_location/" + category_imagename);
                            removehidden_class('receipt_display');
                        }
                    }
                }
            }
        }
    });
}
$("#category_name").change(function () {
    var category_name = $("#category_name").val();

    $.ajax
            ({
                type: "POST",
                url: "db/validate_category_name.php",
                data: 'category_name=' + category_name,
                datatype: "html",
                success: function (result)
                {
                    if (result == 1)
                    {
                        inputbox_error_notification('category_name', 'category Already in database');
                        add_disabled('savecategorybutton');

                    } else
                    {
                        inputbox_success_notification('category_name', 'category Available');
                        remove_disabled('savecategorybutton');
                    }
                }
            });

});
$("#savecategorybutton").click(function () {
    var isNew = false;
    var category_uid = $("#category_uid").val();
    var category_name = $("#category_name").val();
    var type = $("#type").val();
    var img_name = $("#img_name").val();
    add_disabled('savecategorybutton');
    if (category_uid == '')
    {
        isNew = true;
    }
    if (category_name == '')
    {
        inputbox_error_notification('category_name', 'Please Enter category Name');
    } else
    {
        $.ajax
                ({
                    type: "POST",
                    url: "db/manage_category.php",
                    data: 'isNew=' + isNew.toString() + '&category_uid=' + category_uid + '&category_name=' + category_name + '&type=' + type + '&img_name=' + img_name,
                    datatype: "html",
                    success: function (result)
                    {
                         if (result.trim() == 1)
                         {
                             if (isNew == true)
                             {
                                 toastr_success('Category Added Successfully.', 'index');
                             } else
                             {
                                 toastr_success('Category Updated Successfully.', '');
                             }
                         } else
                         {
                             toastr_error();
                         }
                    }
                });
    }
});