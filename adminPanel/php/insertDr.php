<?php
    include('DBconn.php');

    if (isset($_POST['insertDr'])){
        $medicalID = $_POST['medicalID'];
        $firstName = $_POST['firstName'];
        $lastName = $_POST['lastName'];
        $nic = $_POST['nic'];
        $workingAres = $_POST['workArea'];
        $telephone = $_POST['tel'];
        $email = $_POST['email'];
        $password = $_POST['password'];
        
        // echo $medicalID;
        // echo $firstName;
        // echo $lastName;
        // echo $nic;
        // echo $workingAres;
        // echo $telephone;
        // echo $email;
        // echo $password;
      $sql = "INSERT INTO `doctor`(`name`, `lastname`, `phone`, `medicalRegID`, `nic`, `workArea`, `email`, `password`,`status`) VALUES ('$firstName','$lastName','$telephone','$medicalID','$nic','$workingAres','$email','$password',1)";
     // $sql = "INSERT INTO `doctor`( `name`, `lastname`, `phone` , `medicalRegID`, `nic`, `workArea`, `email`, `password`,`status`) VALUES (\'savindu\',\'bandara\',\'0764650666\',\'hdasj\',\'981121864v\',\'Matara\',\'bsavindu1998@gmail.com\',\'1234\',1)";  
      $insertResult = mysqli_query($connection,$sql);

        if ($insertResult){
            echo "<script>alert('Successfully entered')</script>";
            echo "<script>window.open('../admin.movie.html','_self')</script>;";
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
   //UPDATE `doctor` SET `DID`=[value-1],`name`=[value-2],`lastname`=[value-3],`phone`=[value-4],`status`=[value-5],`medicalRegID`=[value-6],`nic`=[value-7],`workArea`=[value-8],`email`=[value-9],`password`=[value-10] WHERE 1
    $insertResult = mysqli_query($connection,$sql);

    if ($insertResult){
        echo "<script>alert('Successfully Updated')</script>";
        echo "<script>window.open('../admin.movie.php','_self')</script>;";
    }
    else {
        echo "<script>alert('Failed')</script>";
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
    }

}


?>