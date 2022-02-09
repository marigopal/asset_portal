<?php
include '../../include/lib_page.php';
$sno = 0;
$sql = "SELECT * FROM `tbl_company` WHERE is_deleted = '0' ORDER BY company_name ASC";
$result = $con->query($sql);
if ($result->num_rows > 0) {
    while ($row = $result->fetch_array(MYSQLI_BOTH)) {
        ?>	
        <tr>
            <td><?= ++$sno; ?></td>
            <td hidden=""><?php echo $row['company_uid']; ?></td>
            <td><?php echo $row['company_name']; ?></td>
            <td>
                <?php
                if ($row['company_imagename'] != '') {
                    ?>
                    <a href="../image_location/<?php echo $row['company_imagename']; ?>" target="_blank">
                        <img src="../image_location/<?php echo $row['company_imagename']; ?>" alt="" width="50" height="50" id="receipt_display">
                    </a>
                <?php } ?></td>
            <td>
                <?php
                $comp_uid_encrypt = encrypt($row['company_uid']);
                ?>
                <a href="../company/manage_company_form?id=<?php echo $comp_uid_encrypt; ?>" ><i class="fas fa-edit"></i></a>
                <a href="#" data-toggle="modal" data-target="#delete_modal_box" onclick="delete_row('<?= $row['company_uid']; ?>')"><i class="fas fa-trash-alt"></i></a>
            </td>
        </td>
        </tr>
        <?php
    }
}
mysqli_close($con);
?> 