var url_string = window.location.href;
var url = new URL(url_string);
var _filter = url.searchParams.get("filter");
$.ajax({
    url: "viewlist/users_viewlist.php",
    type: "POST",
    data: {filter: _filter},
    cache: false,
    success: function (data) {
        $('#_index_users_list').html(data);
        generateDTable('users_list');
    }
});
$("#save_button").click(function ()
{
    var isNew = false;
    var user_id = $("#user_id").val();
    var emp_id = $("#emp_id").val();
    var fname = $("#fname").val();
    var lname = $("#lname").val();
    var username = $("#username").val();
    var password = $("#password").val();
    if (user_id == '')
    {
        isNew = true;
    }
    if (emp_id == '')
    {
        inputbox_error_notification('emp_id', 'Employee ID Should be enter');
        
        $("#emp_id").focus();
    } else if (fname == '')
    {
        inputbox_error_notification('fname', 'First Name Should be enter');
        
        $("#fname").focus();
    }
     else if (lname == '')
    {
        inputbox_error_notification('lname', 'Last Name Should be enter');
        
        $("#lname").focus();
    }else {
        $.ajax
                ({
                    type: "POST",
                    url: "_dbPage/manage_user.php",
                    data: 'isNew=' + isNew.toString() + '&user_id=' + user_id + '&emp_id=' + emp_id + '&fname=' + fname + '&lname=' + lname + '&username=' + username + '&password=' + password,
                    datatype: "html",
                    success: function (result)
                    {
                        if (result.trim() == 1)
                        {
                            if (isNew == true)
                            {
                                modal_hide('users_modal_box');
                                toastr_success('Use Added Successfully..!', '');
                            } else
                            {
                                modal_hide('users_modal_box');
                                toastr_success('User Updated Successfully..!', '');
                            }
                        } else
                        {
                            toastr_error();
                        }
                    }
                });
    }
});
function update_user(id)
{
    $.ajax
            ({
                type: "POST",
                url: "_dbPage/get_userdetail.php",
                data: {id: id},
                dataType: 'json',
                success: function (result)
                {
                    var len = result.length;
                    if (len != 0)
                    {
                        for (var i = 0; i < len; i++)
                        {
                            var users_id = result[i]['users_id'];
                            var emp_id = result[i]['emp_id'];
                            var firstname = result[i]['firstname'];
                            var lastname = result[i]['lastname'];
                            var username = result[i]['username'];
                            var password = result[i]['password'];
                            if (len > 0)
                            {
                                $("#user_id").val(users_id);
                                $("#emp_id").val(emp_id);
                                $("#fname").val(firstname);
                                $("#lname").val(lastname);
                                $("#username").val(username);
                                $("#password").val(password);
                            }
                        }
                    }
                }
            });
}
function delete_user(id)
{
    $("#deleteuser_uid").val(id);
}
$("#delete_user").click(function ()
{
    var uid = $("#deleteuser_uid").val();
    $.ajax
            ({
                type: "POST",
                url: "_dbPage/delete_user.php",
                data: 'uid=' + uid,
                datatype: "html",
                success: function (result)
                {
                    if (result == 1)
                    {
                        modal_hide('deleteuser_modal_box');
                        toastr_success('Deleted Successfully..!', '');
                    } else
                    {
                        toastr_error();
                    }
                }
            });
});