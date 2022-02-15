<?php

include('../../include/lib_page.php');
$id = $_POST['id'];
$sql = "SELECT * FROM `tbl_users` WHERE `users_uid` = '$id' and is_deleted = '0'";
$result = mysqli_query($con, $sql);
$data_arr = array();
while ($row = mysqli_fetch_array($result)) {
    $users_uid = $row['users_uid'];
    $emp_id = $row['emp_id'];
    $firstname = $row['firstname'];
    $lastname = $row['lastname'];
    $username = $row['username'];
    $password = $row['password'];
    $data_arr[] = array("users_id" => $users_uid, "emp_id" => $emp_id, "firstname" => $firstname, "lastname" => $lastname, "username" => $username, "password" => $password);
}
echo json_encode($data_arr);
?>