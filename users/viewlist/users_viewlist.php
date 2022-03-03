<?php
include '../../include/lib_page.php';
$sno = 0;
$sql = "SELECT * from tbl_users WHERE is_deleted= '0'";
$result = $con->query($sql);
if ($result->num_rows > 0) {
    while ($row = $result->fetch_array(MYSQLI_BOTH)) {
        ?>
        <tr>
            <td><?= ++$sno; ?></td>
            <td hidden=""><?php echo $row['users_uid']; ?></td>
            <td><?php echo $row['emp_id']; ?></td>
            <td><a href="../users_assignedassetslist/index?eid=<?php echo encrypt($row['users_uid']); ?>"><?php echo $row['firstname']; ?></a</td>
            <td><?php echo $row['lastname']; ?></td>
            <td><?php echo $row['username']; ?></td>
            <td>
                <a href="#" data-toggle="modal" data-target="#users_modal_box" onclick="update_user('<?= $row['users_uid']; ?>');"><i class="fas fa-edit"></i></a>
                <a href="#" data-toggle="modal" data-target="#deleteuser_modal_box" onclick="delete_user('<?= $row['users_uid']; ?>');"><i class="fas fa-trash-alt"></i></a>
            </td>ref="#" data-toggle="modal" data-target="#modal-danger"><i class="fas fa-trash-alt"></i></a>
        </td>
        </tr>
        <?php
    }
}
mysqli_close($con);
?>
