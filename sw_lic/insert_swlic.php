<?php
include('../include/menu/menu.php');
?>
<div class="content-wrapper">
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Manage License</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="../home/">Home</a></li>
                        <li class="breadcrumb-item"><a href="../sw_lic/">License</a></li>
                        <li class="breadcrumb-item active">Manage License</li>
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
                                <select class="form-control select2bs4" id="category" name="category" readonly=""></select>   
                            </div>
                        </div>
                        
                    </div>
                    <div class="row d-flex justify-content-center">
                        <div class="form-group" hidden="">
                            <label>Unique ID</label>
                            <input type="text" class="form-control" id="lic_uid" name="lic_uid">
                        </div>
                       
                    </div>
                    


                    <div class="row d-flex justify-content-center">
                        <div class="col-12 col-md-6">
                            <div class="form-group">
                                <label>Manufacturer
                                    <span class="required text-red"><img src="../img/add_row.png" alt="Smiley face" height="25" width="25" data-toggle="modal" data-target="#new_users" title="New"></span>
                                </label>
                                <select class="form-control select2bs4" id="manufacturer" name="manufacturer"></select>                            
                            </div>
                        </div>
                    </div>
                    <div class="row d-flex justify-content-center">
                        <div class="col-12 col-md-6">
                            <div class="form-group">
                                <label>Version
                                    <span class="required text-red"><img src="../img/add_row.png" alt="Smiley face" height="25" width="25" data-toggle="modal" data-target="#new_users" title="New"></span>
                                </label>
                                <select class="form-control select2bs4" id="model" name="model"></select>                            
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
                                <label>Qty</label>
                                <input type="text" class="form-control " id="qty" name="qty" onclick = "input_remove_error_notification('qty')">
                            </div>
                        </div>
                    </div>
                    <div class="row d-flex justify-content-center">
                        <div class="col-12 col-md-6">
                            <div class="form-group">
                                <label>Server IP</label>
                                <input type="text" class="form-control " id="srvr_ip" name="srvr_ip" onclick = "input_remove_error_notification('srvr_ip')">
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
                                <button type="button" class="btn btn-default" data-dismiss="modal" id="cancel_button" onclick="location.href = '../sw_lic/';">Close</button>
                                <button type="button" class="btn btn-primary" id="savelic_btn" name="savelic_btn">Save</button>
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
<script src="js/manage_swlic.js" type="text/javascript"></script>