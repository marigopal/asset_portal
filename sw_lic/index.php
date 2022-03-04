
<?php
include('../include/menu/menu.php');
include('../include/model.php');
include ("modals/asset_assign_user.php");
?>
<div class="content-wrapper">
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>License</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="../home/">Home</a></li>
                        <li class="breadcrumb-item active">License</li>
                    </ol>
                </div>
            </div>
        </div>
    </section>
    <?php include('component_widget.php'); ?>
    <section class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <a href="insert_swlic"><img src="../img/add_row.png" alt="Smiley face" height="25" width="25" data-toggle="modal" data-target="#new_users" title="New"></a>
                        </div>
                        <div class="card-body">
                            <table id="lic_list" class="table table-bordered table-striped">
                                <thead>
                                    <tr>
                                        <th width="10%">#</th>
                                        <th hidden="">ID</th>
                                        <th>Inv Date</th>
                                        <th>Inv No</th>
                                        <th>Manufacturer</th>
                                        <th>Software Name</th>
                                        <th>Version</th>
                                        <th>Expired On</th>
                                        <th>Server IP</th>
                                        <th>Qty</th>

                                        <th width="10%">Action</th>
                                    </tr>
                                </thead>
                                <tbody id="_index_lic_list"></tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<?php include('../include/footer.php'); ?>
<?php include('../include/script.php'); ?>
<script src="js/index.js" type="text/javascript"></script>