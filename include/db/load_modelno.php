<?php
include('../../include/lib_page.php');

$query2 = "SELECT * FROM `tbl_modelno` WHERE `is_deleted` = '0'";

$result = mysqli_query($con,$query2);
$data_arr = array();
while( $row = mysqli_fetch_array($result) ){
    $modelno_uid = $row['modelno_uid'];
    $model_number = $row['model_number'];
   
    $data_arr[] = array("modelno_uid" => $modelno_uid, "model_number" => $model_number);
}
echo json_encode($data_arr);
?>
