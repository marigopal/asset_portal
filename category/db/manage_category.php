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
    $sql = "UPDATE `tbl_category` SET `category_name`='$category_name',`type`='$type',`category_imagename`='$img_name' WHERE `category_uid` = '$category_uid'";
}
//echo $sql;exit();
if ($result = $con->query($sql)) {
    echo "1";
} else {

    echo "0";
}
?>