var url_string = window.location.href;
var url = new URL(url_string);
var _id = url.searchParams.get("id");
$.ajax({
    url: "db/get_company.php",
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
                var company_name = result[i]['company_name'];
                var company_imagename = result[i]['company_imagename'];
                if (len > 0)
                {
                    $("#company_uid").val(_id);
                    $("#companyname").val(company_name);
                    $("#img_name").val(company_imagename);
                    if (company_imagename != '') {
                        $("#receipt_display").attr("src", "../image_location/" + company_imagename);
                        removehidden_class('receipt_display');
                    }
                }
            }
        }
    }
});

$("#image_upload").change(function () {
    $("#button_upload_image").click();
});
$("#button_upload_image").click(function () {

    var fd = new FormData();
    var files = $('#image_upload')[0].files;
    if (files.length > 0) {
        fd.append('image_upload', files[0]);

        $.ajax({
            url: 'db/imageupload.php',
            type: 'post',
            data: fd,
            contentType: false,
            processData: false,
            success: function (response) {
                if (response != 0) {
                    $("#img_name").val(response);
                    $("#receipt_display").attr("src", "../image_location/" + response);
                    removehidden_class('receipt_display');
                } else {
                    alert('file not uploaded');
                }
            },
        });
    } else {
        alert("Please select a file.");
    }
});
$("#savecompanybutton").click(function () {
    var isNew = false;
    var company_uid = $("#company_uid").val();
    var companyname = $("#companyname").val();
    var img_name = $("#img_name").val();
    add_disabled('savecompanybutton');
    if (company_uid == '')
    {
        isNew = true;
    }
    if (companyname == '')
    {
        inputbox_error_notification('companyname', 'Please Enter Company Name');
    } else
    {
        $.ajax
                ({
                    type: "POST",
                    url: "db/manage_company.php",
                    data: 'isNew=' + isNew.toString() + '&company_uid=' + company_uid + '&companyname=' + companyname + '&img_name=' + img_name,
                    datatype: "html",
                    success: function (result)
                    {
                        if (result.trim() == 1)
                        {
                            if (isNew == true)
                            {
                                toastr_success('Company Added Successfully.', 'index');
                            } else
                            {
                                toastr_success('Company Updated Successfully.', '');
                            }
                        } else
                        {
                            toastr_error();
                        }
                    }
                });
    }
});
$("#companyname").change(function () {

    var companyname = $("#companyname").val();
    $.ajax
            ({
                type: "POST",
                url: "db/validate_companyname.php",
                data: 'companyname=' + companyname,
                datatype: "html",
                success: function (result)
                {
                    if (result == 1)
                    {
                        inputbox_error_notification('companyname', 'Company Already in database');
                        add_disabled('savecompanybutton');

                    } else
                    {
                        remove_disabled('savecompanybutton');
                    }
                }
            });
});