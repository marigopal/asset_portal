<?php

include('../../include/lib_page.php');
$compo_removeuid = $_POST['compo_removeuid'];

$update_query = "UPDATE `tbl_component` SET `assigned_user`='' WHERE `component_uid` ='$compo_removeuid'";

if ($result = $con->query($update_query)) {
    echo "1";
} else {

    echo "0";
}
?>