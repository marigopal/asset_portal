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
        url: "db/get_models.php",
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
                    var models_name = result[i]['models_name'];
                    var models_image = result[i]['models_image'];
                    if (len > 0)
                    {
                        $("#models_uid").val(_id);
                        $("#models_name").val(models_name);
                        $("#img_name").val(models_image);
                        if (models_image != '') {
                            $("#receipt_display").attr("src", "../image_location/" + models_image);
                            removehidden_class('receipt_display');
                        }
                    }
                }
            }
        }
    });
}
$("#models_name").change(function () {
    var models_name = $("#models_name").val();

    $.ajax
            ({
                type: "POST",
                url: "db/validate_models_name.php",
                data: 'models_name=' + models_name,
                datatype: "html",
                success: function (result)
                {
                    if (result == 1)
                    {
                        inputbox_error_notification('models_name', 'Models Already in database');
                        add_disabled('savemodelsbutton');

                    } else
                    {
                        inputbox_success_notification('models_name', 'Models Available');
                        remove_disabled('savemodelsbutton');
                    }
                }
            });

});
$("#savemodelsbutton").click(function () {
    var isNew = false;
    var models_uid = $("#models_uid").val();
    var models_name = $("#models_name").val();
    var img_name = $("#img_name").val();
    add_disabled('savemodelsbutton');
    if (models_uid == '')
    {
        isNew = true;
    }
    if (models_name == '')
    {
        inputbox_error_notification('models_name', 'Please Enter Models Name');
    } else
    {
        $.ajax
                ({
                    type: "POST",
                    url: "db/manage_models.php",
                    data: 'isNew=' + isNew.toString() + '&models_uid=' + models_uid + '&models_name=' + models_name + '&img_name=' + img_name,
                    datatype: "html",
                    success: function (result)
                    {
                         if (result.trim() == 1)
                         {
                             if (isNew == true)
                             {
                                 toastr_success('Models Added Successfully.', 'index');
                             } else
                             {
                                 toastr_success('Models Updated Successfully.', '');
                             }
                         } else
                         {
                             toastr_error();
                         }
                    }
                });
    }
});