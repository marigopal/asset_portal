$(document).ready(function () {
    var url_string = window.location.href;
    var url = new URL(url_string);
    var _id = url.searchParams.get("id");
    if (_id != undefined) {
        load_data(_id);
    }
});
function load_data(_id) {
    $.ajax({
        url: "db/get_modelno.php",
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
                    var model_number = result[i]['model_number'];
                    var modelno_image = result[i]['modelno_image'];
                    if (len > 0)
                    {
                        $("#modelno_uid").val(_id);
                        $("#modelno_name").val(model_number);
                        $("#img_name").val(modelno_image);
                        if (modelno_image != '') {
                            $("#receipt_display").attr("src", "../image_location/" + modelno_image);
                            removehidden_class('receipt_display');
                        }
                    }
                }
            }
        }
    });
}
$("#modelno_name").change(function () {
    var modelno_name = $("#modelno_name").val();

    $.ajax
            ({
                type: "POST",
                url: "db/validate_modelno_name.php",
                data: 'modelno_name=' + modelno_name,
                datatype: "html",
                success: function (result)
                {
                    if (result == 1)
                    {
                        inputbox_error_notification('modelno_name', 'Model Number Already in database');
                        add_disabled('savemodelnobutton');

                    } else
                    {
                        inputbox_success_notification('modelno_name', 'Model Number Available');
                        remove_disabled('savemodelnobutton');
                    }
                }
            });

});
$("#savemodelnobutton").click(function () {
    var isNew = false;
    var modelno_uid = $("#modelno_uid").val();
    var modelno_name = $("#modelno_name").val();
    var img_name = $("#img_name").val();
    add_disabled('savemodelnobutton');
    if (modelno_uid == '')
    {
        isNew = true;
    }
    if (modelno_name == '')
    {
        inputbox_error_notification('modelno_name', 'Please Enter Model Number');
    } else
    {
        $.ajax
                ({
                    type: "POST",
                    url: "db/manage_modelno.php",
                    data: 'isNew=' + isNew.toString() + '&modelno_uid=' + modelno_uid + '&modelno_name=' + modelno_name + '&img_name=' + img_name,
                    datatype: "html",
                    success: function (result)
                    {
                         if (result.trim() == 1)
                         {
                             if (isNew == true)
                             {
                                 toastr_success('Model Number Added Successfully.', 'index');
                             } else
                             {
                                 toastr_success('Model Number Updated Successfully.', '');
                             }
                         } else
                         {
                             toastr_error();
                         }
                    }
                });
    }
});