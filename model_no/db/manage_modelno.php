<?php

include('../../include/lib_page.php');
$isNew = $_POST['isNew'];
$modelno_uid = decrypt($_POST['modelno_uid']);
$modelno_name = $_POST['modelno_name'];
$img_name = $_POST['img_name'];
$uid = uniqid();
$uid = "MODLNO_" . $uid;
if ($isNew === 'true') {
    $sql = "INSERT INTO `tbl_modelno`(`modelno_uid`, `model_number`, `modelno_image`) VALUES ('$uid','$modelno_name',"
            . "'$img_name')";
} else if ($isNew === 'false') {
    $sql = "UPDATE `tbl_modelno` SET `model_number`='$modelno_name',`modelno_image`='$img_name' WHERE `modelno_uid` = '$modelno_uid'";
}
//echo $sql;exit();
if ($result = $con->query($sql)) {
    echo "1";
} else {

    echo "0";
}
?>