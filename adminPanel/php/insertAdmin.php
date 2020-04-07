<?php
include('DBconn.php');

if (isset($_POST['insertAdmin'])){
    $firstname = $_POST['firstname'];
    $lastname = $_POST['lastname'];
    $email = $_POST['email'];
    $designation = $_POST['designation'];
    $tel = $_POST['tel'];
    $password = $_POST['pw'];
    $nic = $_POST['nic'];
    
    $sql = "INSERT INTO `admin`( `firstname`, `lastname`, `email`, `designation`, `telephone`, `password`, `nic`) VALUES ('$firstname','$lastname','$email','$designation','$tel','$password','$nic')";
    $insertResult = mysqli_query($connection,$sql);

    if ($insertResult){
        echo "<script>alert('Successfully entered new Admin')</script>";
        echo "<script>window.open('../admin.user.html','_self')</script>;";
    }
    else {
        echo "<script>alert('Duplicate entries found')</script>";
    }


}


?>