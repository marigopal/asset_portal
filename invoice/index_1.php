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


                        </div>
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
                        <div align="left">
                            <input type="submit" name="submit" class="btn btn-info" value="Insert" />
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>

</div>
<?php include('../include/footer.php'); ?>
<?php include('../include/script.php'); ?>
<script src="js/insert_component.js" type="text/javascript"></script>
