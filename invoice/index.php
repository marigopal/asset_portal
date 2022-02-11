<?php
include('../include/menu/menu.php');
include('../include/model.php');

function fill_manufacturer() {
    $output = 'get';

    return $output;
}
?>
<div class="content-wrapper">
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Invoice</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="../home/">Home</a></li>
                        <li class="breadcrumb-item active">Invoice</li>
                    </ol>
                </div>
            </div>
        </div>
    </section>
    <section class="content">
        <div class="container-fluid">
            <div class="card card-default">
                <div class="card-body">
                    <form method="post" id="insert_form">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="card card-default">

                                    <div class="card-body p-0">
                                        <div class="bs-stepper">
                                            <div class="bs-stepper-header" role="tablist">
                                                <!-- your steps here -->
                                                <div class="step" data-target="#logins-part">
                                                    <button type="button" class="step-trigger" role="tab" aria-controls="logins-part" id="logins-part-trigger">
                                                        <span class="bs-stepper-circle">1</span>
                                                        <span class="bs-stepper-label">Details</span>
                                                    </button>
                                                </div>
                                                <div class="line"></div>
                                                <div class="step" data-target="#information-part">
                                                    <button type="button" class="step-trigger" role="tab" aria-controls="information-part" id="information-part-trigger">
                                                        <span class="bs-stepper-circle">2</span>
                                                        <span class="bs-stepper-label">Serial</span>
                                                    </button>
                                                </div>
                                            </div>
                                            <div class="bs-stepper-content">
                                                <!-- your steps content here -->
                                                <div id="logins-part" class="content" role="tabpanel" aria-labelledby="logins-part-trigger">
                                                    <div class="row">
                                                        <div class="col-12 col-sm-4">
                                                            <div class="form-group">
                                                                <label>Asset Category
                                                                </label>
                                                                <select class="form-control select2bs4" id="asset_category" name="asset_category">
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="col-12 col-sm-4">
                                                            <div class="form-group">
                                                                <label>Warranty (Months)</label>
                                                                <input type="number" class="form-control" id="warranty" name="warranty">
                                                            </div>
                                                        </div>
                                                        <div class="col-12 col-sm-4">
                                                            <div class="form-group">
                                                                <label>Location</label>
                                                                <select class="form-control select2bs4" id="location" name="location">

                                                                </select>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    
                                                    <div class="row">





                                                    </div>

                                                    <div class="row">
                                                        <div class="col-12 col-sm-4">
                                                            <div class="form-group">
                                                                <label>Purchase Order Date</label>
                                                                <div class="input-group date" id="pod" data-target-input="nearest">
                                                                    <input type="text" class="form-control datetimepicker-input" data-target="#pod" id="pod" name="pod" />
                                                                    <div class="input-group-append" data-target="#pod" data-toggle="datetimepicker">
                                                                        <div class="input-group-text"><i class="fa fa-calendar"></i></div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-12 col-sm-4">
                                                            <div class="form-group">
                                                                <label>Purchase Order Number</label>
                                                                <input type="text" class="form-control" id="pon" name="pon">
                                                            </div>
                                                        </div>
                                                        <div class="col-12 col-sm-4">
                                                            <div class="form-group">
                                                                <label>Purchase Cost</label>
                                                                <input type="text" class="form-control" id="poc" name="poc">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-12 col-sm-4">
                                                            <div class="form-group">
                                                                <label>Supplier</label>
                                                                <select class="form-control select2bs4" id="supplier" name="supplier">
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="col-12 col-sm-4">
                                                            <div class="form-group">
                                                                <label>Invoice  Date</label>
                                                                <div class="input-group date" id="invdate" data-target-input="nearest">
                                                                    <input type="text" class="form-control datetimepicker-input" data-target="#invdate" id="invdate" name="invdate" />
                                                                    <div class="input-group-append" data-target="#invdate" data-toggle="datetimepicker">
                                                                        <div class="input-group-text"><i class="fa fa-calendar"></i></div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-12 col-sm-4">
                                                            <div class="form-group">
                                                                <label>Invoice Number</label>
                                                                <input type="text" class="form-control" id="invno" name="invno">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-12 col-sm-4">
                                                            <div class="form-group">
                                                                <label>Manufacturer</label>
                                                                <select class="form-control select2bs4" id="supplier" name="supplier">
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="col-12 col-sm-4">
                                                            <div class="form-group">
                                                                <label>Model</label>
                                                                <select class="form-control select2bs4" id="asset_model" name="asset_model">
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="col-12 col-sm-4">
                                                            <div class="form-group">
                                                                <label>Model No</label>
                                                                <select class="form-control select2bs4" id="model_no" name="model_no">
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">

                                                        <div class="col-sm-6">
                                                            <!-- radio -->
                                                            <div class="form-group ">
                                                                Are you want to add more items in same invoice? 

                                                                
                                                                <div class="icheck-primary d-inline">
                                                                    <input type="radio" id="radioPrimary2" name="r1">
                                                                    <label for="radioPrimary2">
                                                                        Yes
                                                                    </label>
                                                                </div>
                                                                <div class="icheck-primary d-inline">
                                                                    <input type="radio" id="radioPrimary1" name="r1" checked>
                                                                    <label for="radioPrimary1"> No
                                                                    </label>
                                                                </div>

                                                            </div>
                                                        </div>
                                                        <div class="col-sm-6 d-none">
                                                            <!-- radio -->
                                                            <div class="form-group ">

                                                                <select class="form-control" id="asset_category" name="asset_category">
                                                                    <option value="0">Select</option>
                                                                    <option value="1">Yes</option>
                                                                </select>

                                                            </div>
                                                        </div>




                                                    </div>


                                                    <button class="btn btn-primary" onclick="stepper.next()">Next</button>
                                                </div>
                                                <div id="information-part" class="content" role="tabpanel" aria-labelledby="information-part-trigger">
                                                    <div class="row">
                                                        <div class="container">
                                                            <div>
                                                                <a name="add" id="add" class="add"><img src="../img/add_row.png" alt="Smiley face" height="25" width="25" title="New"></a>
                                                            </div>
                                                            <br />
                                                            <div class="table-responsive">
                                                                <table  class="table table-bordered" id="item_table">
                                                                    <tr>
                                                                        <th>Serial Number</th>
                                                                        <th>Remarks</th>
                                                                        <th>Action</th>
                                                                    </tr>
                                                                </table>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <button class="btn btn-primary" onclick="stepper.previous()">Previous</button>
                                                    <button type="submit" class="btn btn-primary">Submit</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- /.card -->
                                </div>
                            </div>

                        </div>
                    </form>
                </div>
            </div>
    </section>

</div>
<?php include('../include/footer.php'); ?>
<?php include('../include/script.php'); ?>
<script src="js/insert_component.js" type="text/javascript"></script>
