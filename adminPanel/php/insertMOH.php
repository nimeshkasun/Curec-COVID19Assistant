<?php
include('DBconn.php');

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
        echo "<script>window.open('../admin.theatre.html','_self')</script>;";
    }
    else {
        echo "<script>alert('Duplicate entries found')</script>";
        echo "<script>window.open('../admin.theatre.html','_self')</script>;";
    }
}

?>