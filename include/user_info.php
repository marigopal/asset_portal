<?php

$sqlname1 = "SELECT * FROM `tbl_users`";
$resultname1 = mysqli_query($con, $sqlname1);
while ($rowname1 = mysqli_fetch_assoc($resultname1)) {
    ${strtoupper($rowname1['users_uid']) . 'emp_id'} = $rowname1['emp_id'];
    ${strtoupper($rowname1['users_uid']) . 'firstname'} = $rowname1['firstname'];
    ${strtoupper($rowname1['users_uid']) . 'lastname'} = $rowname1['lastname'];
    ${strtoupper($rowname1['users_uid']) . 'username'} = $rowname1['username'];
    ${strtoupper($rowname1['users_uid']) . 'mobile_no'} = $rowname1['mobile_no'];
    ${strtoupper($rowname1['users_uid']) . 'email_address'} = $rowname1['email_address'];
}
?>
