<?php

include "../../include/lib_page.php";
$username = $_POST['txt_uname'];
$password = encrypt($_POST['txt_pwd']);
if (isset($_POST['remember'])) {
    $remember = $_POST['remember'];
}
if ($username != "" && $password != "") {
    $check_user = "select count(*) as cntUser,users_uid,is_firstlogin  from tbl_users WHERE username = '$username' and password = '$password' AND `is_deleted` = '0' GROUP BY users_uid";
//    echo $check_user;exit();
    $result = mysqli_query($con, $check_user);
    $row = mysqli_fetch_array($result);
    $count = $row['cntUser'];
    if ($count == '') {
        $count = 0;
    }
    if ($count > 0) {
        $user = encrypt($row['users_uid']);
        $first_login = $row['is_firstlogin'];
        if (isset($_POST['remember'])) {
            if ($remember == 'on') {
                echo "[{\"login\":\"2\",\"user\":\"" . $user . "\",\"isfirst_login\":\"" . $first_login . "\"}]";
            }
        } else {
            echo "[{\"login\":\"1\",\"user\":\"" . $user . "\",\"isfirst_login\":\"" . $first_login . "\"}]";
        }
    } else {
        echo "0";
    }
}
?>
