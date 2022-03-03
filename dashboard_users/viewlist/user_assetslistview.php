<?php
include '../../include/lib_page.php';
$current_user = decrypt($_COOKIE['user_id']);
$sno = 0;
$sql = "SELECT a.manufacturer,a.category,a.model,a.serialno,a.remarks,a.asset_tag,b.manufacturers_uid,b.manufacturers_name,c.models_uid,c.models_name,d.category_uid,d.category_name FROM `tbl_component` a LEFT JOIN tbl_manufacturers b on b.manufacturers_uid = a.manufacturer LEFT JOIN tbl_models c on c.models_uid = a.model LEFT JOIN tbl_category d on d.category_uid = a.category WHERE `assigned_user` = '$current_user' AND a.status_id = 'STS_620be5e16097b'";
$result = $con->query($sql);
if ($result->num_rows > 0) {
    while ($row = $result->fetch_array(MYSQLI_BOTH)) {
        ?>	
        <tr>
            <td><?= ++$sno; ?></td>
            <td><?php echo $row['asset_tag']; ?></td>
            <td><?php echo $row['manufacturers_name']; ?></td>
            <td><?php echo $row['category_name']; ?></td>
            <td><?php echo $row['models_name']; ?></td>
            <td><?php echo $row['serialno']; ?></td>
            <td><?php echo $row['remarks']; ?></td>
          
        </tr>
        <?php
    }
}
mysqli_close($con);
?> 