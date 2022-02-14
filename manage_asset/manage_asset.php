<?php
include('../include/menu/menu.php');
?>
<div class="content-wrapper">
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Update</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="../home/">Home</a></li>
                        <li class="breadcrumb-item"><a href="index">Invoice</a></li>
                        <li class="breadcrumb-item active">Update</li>
                    </ol>
                </div>
            </div>
        </div>
    </section>
    <section class="content">
        <div class="container-fluid">
            <div class="card card-default">
                <div class="card-body">
                     <div class="row d-flex justify-content-center">
                        <div class="col-12 col-md-6">
                            <div class="form-group">
                                <label>Catagory</label>
                                <select class="form-control" id="category" name="category" readonly=""></select>   
                            </div>
                        </div>
                    </div>
                    <div class="row d-flex justify-content-center">
                        <div class="form-group" hidden="">
                            <label>Unique ID</label>
                            <input type="text" class="form-control" id="comp_uid" name="comp_uid">
                        </div>
                        <div class="col-12 col-md-6">
                            <div class="form-group">
                                <label>Asset Tag</label>
                                <input type="text" class="form-control" id="asset_tag" name="asset_tag" readonly="">

                            </div>
                        </div>
                    </div>
                    <div class="row d-flex justify-content-center">
                        <div class="col-12 col-md-6">
                            <div class="form-group">
                                <label>Warranty</label>
                                <input type="text" class="form-control " id="warranty" name="warranty" onclick = "input_remove_error_notification('warranty')">
                            </div>
                        </div>
                    </div>

                   
                    <div class="row d-flex justify-content-center">
                        <div class="col-12 col-md-6">
                            <div class="form-group">
                                <label>Manufacturer
                                    <span class="required text-red"><img src="../img/add_row.png" alt="Smiley face" height="25" width="25" data-toggle="modal" data-target="#new_users" title="New"></span>
                                </label>
                                <select class="form-control" id="manufacturer" name="manufacturer"></select>                            
                            </div>
                        </div>
                    </div>
                    <div class="row d-flex justify-content-center">
                        <div class="col-12 col-md-6">
                            <div class="form-group">
                                <label>Model
                                    <span class="required text-red"><img src="../img/add_row.png" alt="Smiley face" height="25" width="25" data-toggle="modal" data-target="#new_users" title="New"></span>
                                </label>
                                <select class="form-control" id="model" name="model"></select>                            
                            </div>
                        </div>
                    </div>
                    <div class="row d-flex justify-content-center">
                        <div class="col-12 col-md-6">
                            <div class="form-group">
                                <label>Model No
                                    <span class="required text-red"><img src="../img/add_row.png" alt="Smiley face" height="25" width="25" data-toggle="modal" data-target="#new_users" title="New"></span>
                                </label>
                                <select class="form-control" id="modelno" name="modelno"></select>                            
                            </div>
                        </div>
                    </div>
                    <div class="row d-flex justify-content-center">
                        <div class="col-12 col-md-6">
                            <div class="form-group">
                                <label>Serial</label>

                                <input type="text" class="form-control " id="serial" name="serial" onclick = "input_remove_error_notification('serial')">
                            </div>
                        </div>
                    </div>
                    <div class="row d-flex justify-content-center">
                        <div class="col-12 col-md-6">
                            <div class="form-group">
                                <label>Remarks</label>
                                <input type="text" class="form-control " id="remarks" name="remarks" onclick = "input_remove_error_notification('remarks')">
                            </div>
                        </div>
                    </div>



                    <div class="row d-flex justify-content-center">
                        <div class="col-12 col-md-6">
                            <div class="form-group">
                                <label>Upload Image</label>
                                <input type="file" id="image_upload" name="file" />
                                <input type="hidden" value="Upload" id="button_upload_image">
                                <input type="hidden" id="img_name"/>
                            </div>
                        </div>
                    </div>
                    <div class="row d-flex justify-content-center">
                        <div class="col-12 col-md-6">
                            <div class="form-group">
                                <img src="" alt="" width="200" height="200" id="receipt_display" class="d-none"> 
                            </div>
                        </div>
                    </div>
                    <div class="row d-flex justify-content-center">
                        <div class="col-12 col-md-6">
                            <div class="form-group">
                                <button type="button" class="btn btn-default" data-dismiss="modal" onclick="location.href = 'index';">Close</button>
                                <button type="button" class="btn btn-primary" id="saveinvoicebutton" name="saveinvoicebutton">Save</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<?php include('../include/footer.php'); ?>
<?php include('../include/script.php'); ?>
<script src="js/update.js" type="text/javascript"></script>
<script src="../include/imageupload.js" type="text/javascript"></script>