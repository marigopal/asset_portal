<?php

date_default_timezone_set("Asia/Calcutta");
$con = mysqli_connect("10.0.21.134", "root", "123456", "db_asset");
if (!$con) {
    // header("Location: /db_fail");
    die("Connection failed: " . mysqli_connect_error());
}
$connect = new PDO("mysql:host=10.0.21.134;dbname=db_asset", "root", "123456");

$connection = mysqli_connect("10.0.21.134", "root", "123456", "db_asset");
?>