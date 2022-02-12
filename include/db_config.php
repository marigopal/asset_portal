<?php

date_default_timezone_set("Asia/Calcutta");
$con = mysqli_connect("localhost", "root", "", "db_asset");
if (!$con) {
    // header("Location: /db_fail");
    die("Connection failed: " . mysqli_connect_error());
}
$connect = new PDO("mysql:host=localhost;dbname=db_asset", "root", "");
?>