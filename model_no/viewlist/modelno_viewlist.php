<?php
include '../../include/lib_page.php';
$sno = 0;
$sql = "SELECT * FROM `tbl_modelno` WHERE is_deleted = '0' ORDER BY `model_number` ASC";
$result = $con->query($sql);
if ($result->num_rows > 0) {
    while ($row = $result->fetch_array(MYSQLI_BOTH)) {
        ?>	
        <tr>
            <td><?= ++$sno; ?></td>
            <td hidden=""><?php echo $row['modelno_uid']; ?></td>
            <td>
                <?php
                if ($row['modelno_image'] != '') {
                    ?>
                    <a href="../image_location/<?php echo $row['modelno_image']; ?>" target="_blank">
                        <img src="../image_location/<?php echo $row['modelno_image']; ?>" alt="" width="30" height="20" id="receipt_display">
                    </a>
                <?php } ?>
            </td>
            <td><?php echo $row['model_number']; ?></td>
            <td>
                <?php
                $modelno_uid_encrypt = encrypt($row['modelno_uid']);
                ?>
                <a href="../model_no/manage_modelno_form?id=<?php echo $modelno_uid_encrypt; ?>" ><i class="fas fa-edit"></i></a>
                <a href="#" data-toggle="modal" data-target="#delete_modal_box" onclick="delete_row('<?= $row['modelno_uid']; ?>')"><i class="fas fa-trash-alt"></i></a>
            </td>
        </td>
        </tr>
        <?php
    }
}
mysqli_close($con);
?> 