<?php

    include 'logincheck.php';

if($_POST && array_key_exists("action", $_POST)){

    // CARRY OUT SANITIZATION AND DATA VALIDATION HERE!!!!!!!!!

    // CARRY OUT RELAVANT ACTION
    switch($_POST['action'])
    {
        case "edit":
           // editRecord();
            break;
        case "search":
            //addRecord();
            echo "<script>alert('Search Function')</script>";
            break;
        case "delete":
           // deleteRecord();
            break;
        case "save":
           // saveRecord();
            break;
    }
}

?>