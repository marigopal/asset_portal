<div class="modal fade" id="users_modal_box">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
                <div class="card-body">
                    <div class="row">
                        <div class="col-12" hidden="">
                            <div class="form-group">
                                <label>Users Unique ID</label>
                                <input type="text" class="form-control" id="user_id" name="user_id" placeholder="User ID">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label>Employee ID<span class="required text-red">*</span></label>
                                <input type="text" class="form-control" id="emp_id" name="emp_id" placeholder="Employee ID" onclick = "input_remove_error_notification('emp_id')">
                            </div>
                        </div>
                        <div class="col-12 col-sm-6">
                            <div class="form-group">
                                <label>First Name<span class="required text-red">*</span></label>
                                <input type="text" class="form-control" id="fname" name="fname" placeholder="First Name" onclick = "input_remove_error_notification('fname')">
                            </div>
                        </div>
                        <div class="col-12 col-sm-6">
                            <div class="form-group">
                                <label>Last Name<span class="required text-red">*</span></label>
                                <input type="text" class="form-control" id="lname" name="lname" placeholder="Last Name" onclick = "input_remove_error_notification('lname')">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12 col-sm-6">
                            <div class="form-group">
                                <label>User Name</label>
                                <input type="text" class="form-control" id="username" name="username" placeholder="User Name" onchange="username_validate()" onclick = "input_remove_error_notification('username')">
                            </div>
                        </div>
                        <div class="col-12 col-sm-6">
                            <div class="form-group">
                                <label>Password</label>
                                <input type="password" class="form-control" id="password" name="password" placeholder="Password" onclick = "input_remove_error_notification('Password')">
                            </div>
                        </div>
                    </div>
                   
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary" id="save_button" name="save_button">Save</button>
            </div>
        </div>
    </div>
</div>
<!--Delete Modal Box-->
<div class="modal fade" id="deleteuser_modal_box">
    <div class="modal-dialog">
        <div class="modal-content bg-danger">
            <div class="modal-body">
                <p>Are you sure you want to delete ?</p>
                <div class="row" hidden="">
                    <div class="col-12">
                        <div class="form-group">
                            <label>Unique ID<span class="required text-red">*</span></label>
                            <input type="text" class="form-control" id="deleteuser_uid" name="deleteuser_uid" placeholder="Unique ID">
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-outline-light" data-dismiss="modal">No</button>
                <button type="button" class="btn btn-outline-light" id="delete_user" name="delete_user">Yes</button>
            </div>
        </div>
    </div>
</div>