<?php

include('../../include/lib_page.php');
$category_name = $_POST['category_name'];
$query = "SELECT count(*) as cntUser FROM `tbl_category` where category_name = '$category_name' and is_deleted = '0';";
$result = mysqli_query($con, $query);
$row = mysqli_fetch_array($result);
if ($row['cntUser'] > 0) {
    echo "1";
} else {
    echo "0";
}
?>