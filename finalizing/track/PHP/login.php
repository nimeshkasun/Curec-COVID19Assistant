<?php
	
	if(isset($_POST['log-in']))
	{
		
		$username = $_POST['Username'];
		$password = $_POST['Password'];

		if(empty($username) || empty($password))
		{
			echo'<script language="javascript">
						window.alert("Please fill the empty fields")
						window.location.href = "../login.html"
						</script>';
						exit();
		}
		else{
			if($username=="Admin" && $password=="Admin"){
				echo '<script language="javascript">
				window.location.href = "../track_map.html"
				</script>';
				exit();
			}else{
				echo'<script language="javascript">
				window.alert("Wrong Password")
				window.location.href = "../track_login.html"
				</script>';
				exit();
			}
		}
	}	
	else
	{
		echo'<script language="javascript">
		window.alert("Wrong connection")
		window.location.href = "../track_login.html"
		</script>';
		exit();

	}


	
?>