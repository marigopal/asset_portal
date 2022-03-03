<?php
include('../include/menu/menu.php');
include ("modal/modals.php");
?>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>User Assets List</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="../home">Home</a></li>
                        <li class="breadcrumb-item active">User Assets List</li>
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>

    <section class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div class="invoice p-3 mb-3">
                        <!-- title row -->
                        <div class="row">
                            <div class="col-12">
                                <h4>
                                    <i class="fas fa-globe"></i> Pactron Inc.

                                </h4>
                            </div>
                            <!-- /.col -->
                        </div>
                        <!-- info row -->
                        <div class="row invoice-info">
                            <div class="col-sm-8 invoice-col">
                                <address>
                                    <strong>Employee ID: </strong> <?php echo ${strtoupper(decrypt($_COOKIE['user_id'])) . 'emp_id'}; ?><br>
                                    <strong>Name: </strong> <?php echo ${strtoupper(decrypt($_COOKIE['user_id'])) . 'firstname'}; ?><br>
                                    <strong>Username: </strong> <?php echo ${strtoupper(decrypt($_COOKIE['user_id'])) . 'username'}; ?><br>
                                    <strong>Mobile No: </strong> <?php echo ${strtoupper(decrypt($_COOKIE['user_id'])) . 'mobile_no'}; ?><br>
                                    <strong>Email: </strong> <?php echo ${strtoupper(decrypt($_COOKIE['user_id'])) . 'email_address'}; ?><br>
                                </address>
                            </div>
                            <!--                <div class="col-sm-4 invoice-col">
                                              <b>Delivery Challan #007612</b><br>
                                              <br>
                                              <b>Date:</b>  2/22/2014<br>
                                              
                                            </div>-->
                        </div>
                        <div class="row">
                            <div class="col-12 table-responsive">
                                <table class="table table-striped">
                                    <thead>
                                        <tr>

                                            <th>Sl No</th>
                                            <th>Asset Tag</th>
                                            <th>Manufacturer</th>
                                            <th>Category</th>
                                            <th>Model</th>
                                            <th>Serial</th>
                                            <th>Description</th>
                                        </tr>
                                    </thead>
                                    <tbody id="assetlist_tbody">

                                    </tbody>
                                </table>
                            </div>
                            <!-- /.col -->
                        </div>
                        <!-- /.row -->


                        <div class="row no-print">
                            <div class="col-12">
                                <a href="" rel="noopener" class="btn btn-default" id="print_button"><i class="fas fa-print"></i> Print</a>

                            </div>
                        </div>
                    </div>
                    <!-- /.invoice -->
                </div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
</div><?php include('../include/footer.php'); ?>
<?php include('../include/script.php'); ?>
<script src="js/_index.js" type="text/javascript"></script>
<script>
    $("#print_button").click(function () {
        window.print();
    });

</script>