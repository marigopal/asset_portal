<?php

include('../../include/lib_page.php');
$isNew = $_POST['isNew'];
$user_id = $_POST['user_id'];
$emp_id = $_POST['emp_id'];
$fname = $_POST['fname'];
$lname = $_POST['lname'];
$username = $_POST['username'];
$password = $_POST['password'];

if ($isNew === 'true') {
    $blocks_query = "INSERT INTO `tbl_users`(`emp_id`, `firstname`,`lastname`, `username`, `password`) 
    VALUES ('$uid','$emp_id','$fname','$lname','$username','$password')";
} else if ($isNew === 'false') {
    $blocks_query = "UPDATE `tbl_users` SET `emp_id`='$emp_id',`firstname`='$fname',`lastname`='$lname',`username`='$username',
    `password`='$password' WHERE `users_uid` = '$user_id'";
}
if ($result = $con->query($blocks_query)) {
    echo "1";
} else {
    echo "0";
}
?>