<?php
include('DBconn.php');

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
        echo "<script>window.open('../admin.user.html','_self')</script>;";
    }
    else {
        echo "<script>alert('Duplicate entries found')</script>";
    }
}

?>