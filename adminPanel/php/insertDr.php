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


?>