<?php

include('../../include/lib_page.php');
$isNew = $_POST['isNew'];
$category_uid = decrypt($_POST['category_uid']);
$category_name = $_POST['category_name'];
$type = $_POST['type'];
$img_name = $_POST['img_name'];
$uid = uniqid();
$uid = "CATE_" . $uid;
if ($isNew === 'true') {
    $sql = "INSERT INTO `tbl_category`(`category_uid`, `category_name`, `type`, `category_imagename`) VALUES ('$uid','$category_name','$type','$img_name')";
} else if ($isNew === 'false') {
    $sql = "UPDATE `tbl_locations` SET `location_name`='$locationsname',`manager`='$location_manager',"
            . "`addressline1`='$location_address1',`addressline2`='$location_address2',`city`='$location_city',"
            . "`state`='$location_state',`countries`='$countries',`zipcode`='$location_zip',"
            . "`location_image`='$img_name' WHERE `location_uid` = '$locations_uid'";
}
//echo $sql;exit();
if ($result = $con->query($sql)) {
    echo "1";
} else {

    echo "0";
}
?>