<?php
require_once '../../../doctor/system/dbConn.php';

if (isset($_POST['insertMOH'])){
    $mohID = $_POST['mohID'];
    $firstname = $_POST['firstname'];
    $lastname = $_POST['lastname'];
    $nic = $_POST['nic'];
    $workArea = $_POST['workArea'];
    $email = $_POST['email'];
    $mobile = $_POST['telephone'];
    $password = $_POST['password'];

    $sql = "INSERT INTO `moh`(`officernumber`, `name`, `lastname`, `nic`, `phone`, `email`, `Colony`, `password`) VALUES ('$mohID','$firstname','$lastname','$nic','$mobile','$email','$workArea','$password')";
    $insertResult = mysqli_query($connection,$sql);

    if ($insertResult){
        echo "<script>alert('Successfully entered')</script>";
        echo "<script>window.open('../admin.theatre.php','_self')</script>;";
    }
    else {
        echo "<script>alert('Duplicate entries found')</script>";
        echo "<script>window.open('../admin.theatre.php','_self')</script>;";
    }
}

if (isset($_POST['updateMOH'])){
    $mohID = $_POST['mohID'];
    $firstname = $_POST['firstname'];
    $lastname = $_POST['lastname'];
    $nic = $_POST['nic'];
    $workArea = $_POST['workArea'];
    $email = $_POST['email'];
    $mobile = $_POST['telephone'];
    $password = $_POST['password'];
    $sql = "UPDATE `moh` SET `name`='$firstname',`lastname`='$lastname',`nic`='$nic',`phone`='$mobile',`email`='$email',`Colony`='$workArea',`password`='$password' WHERE `officernumber`='$mohID'";
    $updateResult = mysqli_query($connection,$sql);


    if ($updateResult){
        echo "<script>alert('Update Success')</script>";
        echo "<script>window.open('../admin.theatre.php','_self')</script>;";
    }
    else {
        echo "<script>alert('Failed To Update')</script>";
        echo "<script>window.open('../admin.theatre.php','_self')</script>;";
    }
}
if (isset($_POST['deleteMOH'])){
    $mohID = $_POST['mohID'];
    $sql = "DELETE FROM `moh` WHERE `officernumber`='$mohID'";
    $deleteResult = mysqli_query($connection,$sql);
    if ($deleteResult){
        echo "<script>alert('Successfully Deleted')</script>";
        echo "<script>window.open('../admin.theatre.php','_self')</script>;";
    }
    else {
        echo "<script>alert('Failed, Check Again you have search MOH first')</script>";
        echo "<script>window.open('../admin.theatre.php','_self')</script>;";
    }
}

?>