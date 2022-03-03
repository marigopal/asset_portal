<?php

include('../../include/lib_page.php');
$compo_uid = decrypt($_POST['compo_uid']);
$user = $_POST['user'];
$update_query = "UPDATE `tbl_component` SET `assigned_user`='$user', `status_id`='STS_620be5e16097b' WHERE `component_uid` ='$compo_uid'";

if ($result = $con->query($update_query)) {
    echo "1";
} else {

    echo "0";
}
?>
