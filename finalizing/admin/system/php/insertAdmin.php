<?php
require_once '../../../doctor/system/dbConn.php';

if (isset($_POST['insertAdmin'])){
    $firstname = $_POST['firstName'];
    $lastname = $_POST['lastname'];
    $email = $_POST['email'];
    $designation = $_POST['designation'];
    $tel = $_POST['tel'];
    $password = $_POST['pw'];
    $nic = $_POST['nic'];
    
    $sql = "INSERT INTO `tbladmin`( `firstname`, `lastname`, `email`, `designation`, `telephone`, `password`, `nic`) VALUES ('$firstname','$lastname','$email','$designation','$tel','$password','$nic')";
    $insertResult = mysqli_query($connection,$sql);

    if ($insertResult){
        echo "<script>alert('Successfully entered new Admin')</script>";
        echo "<script>window.open('../admin.snacks.php','_self')</script>;";
    }
    else {
        echo "<script>alert('Duplicate entries found')</script>";
    }


}

if (isset($_POST['updateAdmin'])){
    $firstname = $_POST['firstName'];
    $lastname = $_POST['lastname'];
    $email = $_POST['email'];
    $designation = $_POST['designation'];
    $tel = $_POST['tel'];
    $password = $_POST['pw'];
    $nic = $_POST['nic'];
    $sql = "UPDATE `tbladmin` SET `firstname`='$firstname',`lastname`='$lastname',`email`='$email',`designation`='$designation',`telephone`='$tel',`password`='$password' WHERE `nic`='$nic'";
    $updateResult = mysqli_query($connection,$sql);
    if ($updateResult){
        echo "<script>alert('Successfully Updated')</script>";
        echo "<script>window.open('../admin.snacks.php','_self')</script>;";
    }
    else {
        echo "<script>alert('Failed To Update')</script>";
        echo "<script>window.open('../admin.snacks.php','_self')</script>;";
    }

}
if (isset($_POST['deleteAdmin'])){
    $nic = $_POST['nic'];
    $sql = "DELETE FROM `tbladmin` WHERE `nic`='$nic'";
    $deleteResult = mysqli_query($connection,$sql);
    if ($deleteResult){
        echo "<script>alert('Successfully Deleted')</script>";
        echo "<script>window.open('../admin.snacks.php','_self')</script>;";
    }
    else {
        echo "<script>alert('You must search first to delete items')</script>";
        echo "<script>window.open('../admin.snacks.php','_self')</script>;";
    }

}


?>