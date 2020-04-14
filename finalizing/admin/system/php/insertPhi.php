<?php
require_once '../../../doctor/system/dbConn.php';

if (isset($_POST['insertPHI'])){
    $id = $_POST['phiID'];
    $fname = $_POST['firstName'];
    $lastname = $_POST['lastName'];
    $nic = $_POST['nic'];
    $email = $_POST['email'];
    $workArea = $_POST['workArea'];
    $telephone = $_POST['telephone'];
    $password = $_POST['password'];

    //
    $sql = "insert into `phi`(`phiNumber`, `name`, `lastName`, `nic`, `email`, `phone`, `Colony`, `password`) VALUES ('$id','$fname','$lastname','$nic','$email','$telephone','$workArea','$password')";
    $insertResult = mysqli_query($connection,$sql);

    if ($insertResult){
        echo "<script>alert('Successfully entered')</script>";
        echo "<script>window.open('../admin.user.php','_self')</script>;";
    }
    else {
        echo "<script>alert('Duplicate entries found')</script>";
        echo "<script>window.open('../admin.user.php','_self')</script>;";
    }
}

if (isset($_POST['phiUpdate'])){
    $id = $_POST['phiID'];
    $fname = $_POST['firstName'];
    $lastname = $_POST['lastName'];
    $nic = $_POST['nic'];
    $email = $_POST['email'];
    $workArea = $_POST['workArea'];
    $telephone = $_POST['telephone'];
    $password = $_POST['password'];

    $sql ="UPDATE `phi` SET `name`='$fname',`lastName`='$lastname',`nic`='$nic',`email`='$email',`phone`='$telephone',`Colony`='$workArea',`password`='$password' WHERE `phiNumber`='$id'";
    $updateResult = mysqli_query($connection,$sql);
    if ($updateResult){
        echo "<script>alert('Successfully Updated')</script>";
        echo "<script>window.open('../admin.user.php','_self')</script>;";
    }
    else {
        echo "<script>alert('Failed')</script>";
        echo "<script>window.open('../admin.user.php','_self')</script>;";
    }

}

if (isset($_POST['phiDelete'])){
    $id = $_POST['phiID'];
    $sql = "DELETE FROM `phi` WHERE `phiNumber`='$id'";
    $deleteResult = mysqli_query($connection,$sql);

    if ($deleteResult){
        echo "<script>alert('Successfully Deleted')</script>";
        echo "<script>window.open('../admin.user.php','_self')</script>;";
    }
    else {
        echo "<script>alert('Failed, Check Again you have search PHI first')</script>";
        echo "<script>window.open('../admin.user.php','_self')</script>;";
    }
}

?>