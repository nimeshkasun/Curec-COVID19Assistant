<?php
	/*$servername = "tommy.heliohost.org";
	$username = "edvicon_curecadmin";
	$password = "KDUcurec34";
	$database = "edvicon_curec";*/
  $servername = "kdu.curec.life";
  $username = "curecadm_curecadmin";
  $password = "KDUcurec34";
  $database = "curecadm_curec";
	if(mysqli_connect($servername, $username, $password, $database))
	{
		$conn = mysqli_connect($servername, $username, $password, $database);
		$connection = mysqli_connect($servername, $username, $password, $database);
	}
	else
	{
		echo "DB Conn Error";
	}


           /*     $dbtype     = "mysql";
                $dbhost     = "tommy.heliohost.org";
                $dbname     = "edvicon_curec";
                $dbuser     = "edvicon_curecadmin";
                $dbpass     = "KDUcurec34";
                $dbpath     = "c:/test.db";      

                switch($dbtype){
                  case "mysql":
                    $dbconn = "mysql:host=$dbhost;dbname=$dbname";
                    break;

                  case "sqlite":
                    $dbconn = "sqlite:$dbpath";
                    break;

                  case "postgresql":
                    $dbconn = "pgsql:host=$dbhost dbname=$dbname";
                    break;
                }        

                $conn = new PDO($dbconn,$dbuser,$dbpass);	*/
?>