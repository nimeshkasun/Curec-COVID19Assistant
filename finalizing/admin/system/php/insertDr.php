<?php
require_once '../../../doctor/system/dbConn.php';

    if (isset($_POST['insertDr'])){
        $medicalID = $_POST['medicalID'];
        $firstName = $_POST['firstName'];
        $lastName = $_POST['lastName'];
        $nic = $_POST['nic'];
        $workingAres = $_POST['workArea'];
        $telephone = $_POST['tel'];
        $email = $_POST['email'];
        $password = $_POST['password'];
        

      $sql = "INSERT INTO `doctor`(`name`, `lastname`, `phone`, `medicalRegID`, `nic`, `workArea`, `email`, `password`,`status`) VALUES ('$firstName','$lastName','$telephone','$medicalID','$nic','$workingAres','$email','$password',1)";
      $insertResult = mysqli_query($connection,$sql);

        if ($insertResult){
            echo "<script>alert('Successfully entered')</script>";
            echo "<script>window.open('../admin.movie.php','_self')</script>;";
        }
        else {
            echo "<script>alert('Duplicate entries found')</script>";
        }

    }

if (isset($_POST['drUpdate'])){
    $medicalID = $_POST['medicalID'];
    $firstName = $_POST['firstName'];
    $lastName = $_POST['lastName'];
    $nic = $_POST['nic'];
    $workingAres = $_POST['workArea'];
    $telephone = $_POST['tel'];
    $email = $_POST['email'];
    $password = $_POST['password'];

    $sql = "UPDATE `doctor` SET `name`='$firstName',`lastname`='$lastName',`phone`='$telephone',`nic`='$nic',`workArea`='$workingAres',`email`='$email',`password`='$password' WHERE `medicalRegID`='$medicalID'";
    $insertResult = mysqli_query($connection,$sql);

    if ($insertResult){
        echo "<script>alert('Successfully Updated')</script>";
        echo "<script>window.open('../admin.movie.php','_self')</script>;";
    }
    else {
        echo "<script>alert('Failed')</script>";
        echo "<script>window.open('../admin.movie.php','_self')</script>;";
    }

}
if (isset($_POST['drDelete'])){
    $medicalID = $_POST['medicalID'];
    $sql = "DELETE FROM `doctor` WHERE `medicalRegID`='$medicalID'";
    $deleteResult = mysqli_query($connection,$sql);

    if ($deleteResult){
        echo "<script>alert('Successfully Deleted')</script>";
        echo "<script>window.open('../admin.movie.php','_self')</script>;";
    }
    else {
        echo "<script>alert('Failed, Check Again you have search dr first')</script>";
        echo "<script>window.open('../admin.movie.php','_self')</script>;";
    }

}

?>