<?php
include '../../include/lib_page.php';
$sno = 0;
$sql = "SELECT a.swlic_uid,a.inv_id,a.manufacturer,a.category,a.model,a.qty,a.srvr_ip,a.is_deleted,b.invoice_uid,b.invoice_date,b.invoice_no,c.manufacturers_uid,c.manufacturers_name,d.models_uid,d.models_name,e.category_uid,e.category_name,e.type from tbl_swlic a LEFT JOIN tbl_invoice b on b.invoice_uid = a.inv_id LEFT JOIN tbl_manufacturers c on c.manufacturers_uid = a.manufacturer LEFT JOIN tbl_models d on d.models_uid = a.model LEFT JOIN tbl_category e on e.category_uid = a.category";
// echo $sql;exit();
$result = $con->query($sql);
if ($result->num_rows > 0) {
    while ($row = $result->fetch_array(MYSQLI_BOTH)) {
        ?>
        <tr data-widget="expandable-table" aria-expanded="false" class="thead-dark">
            <td><?= ++$sno; ?></td>
            <td hidden=""><?php echo $row['swlic_uid']; ?></td>
            <td><?php echo $row['invoice_date']; ?></td>
            <td>
                <a href="../invoice/index?inv_id=<?php echo encrypt($row['invoice_uid']); ?>" ><?php echo $row['invoice_no']; ?></a>
            </td>
            <td><?php echo $row['manufacturers_name']; ?></td>
            <td><?php echo $row['category_name']; ?></td>
            <td><?php echo $row['models_name']; ?></td>
            <td><?php echo $row['']; ?></td>
            <td><?php echo $row['srvr_ip']; ?></td>
            <td><?php echo $row['qty']; ?></td>
            <td>
                <?php
                $invoice_uid_encrypt = encrypt($row['invoice_uid']);
                ?>
                <a href="../invoice/update?id=<?php echo $invoice_uid_encrypt; ?>" ><i class="fas fa-edit"></i></a>
            </td>
        </tr>
        <?php
    }
}
mysqli_close($con);
?> 