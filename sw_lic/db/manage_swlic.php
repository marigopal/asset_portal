<?php

include('../../include/lib_page.php');
$isNew = $_POST['isNew'];
$lic_uid = decrypt($_POST['lic_uid']);
$category = $_POST['category'];
$manufacturer = $_POST['manufacturer'];
$model = $_POST['model'];
$serial = $_POST['serial'];
$qty = $_POST['qty'];
$srvr_ip = $_POST['srvr_ip'];
$remarks = $_POST['remarks'];
$uid = uniqid();
$uid = "SWLIC_" . $uid;
if ($isNew === 'true') {
    $sql = "INSERT INTO `tbl_swlic`(`swlic_uid`, `manufacturer`, `category`, `model`, `serial`, `qty`, `srvr_ip`, `is_deleted`) VALUES ('$uid','$manufacturer','$category','$model','$serial','$qty','$srvr_ip','$remarks')";
} else if ($isNew === 'false') {
    $sql = "";
}
if ($result = $con->query($sql)) {
    echo "1";
} else {

    echo "0";
}
?>