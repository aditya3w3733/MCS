<?php
@session_start();
include ("../common/db.php");


if(isset($_POST['submit'])){

				unset($_SESSION["deptuserisloggedin"]);
				$email = trim(mysqli_real_escape_string($conn, $_POST['email']));
				$formpassword = mysqli_real_escape_string($conn, $_POST['password']);

				 $sql2 = "SELECT * FROM dept_user_master WHERE emailId = '".$email."'";

				$res = $conn->query($sql2);
				if ($res->num_rows>0)
						 {
						 	
						 	 $row = $res->fetch_assoc();

						 	 		  $dbpass =  $row['password'];
						 	 		  "<br/>".$formpassword;

							 	 	if (password_verify($formpassword, $dbpass)) {
							 	 		
							 	 	$_SESSION["deptuserisloggedin"] = 1; 
						 	 		$_SESSION["deptuserid"] = $row ['id'];
						 	 		$_SESSION["deptid"] = $row ['deptId'];
	    							header("location:home.php");
	    							}

									else {
										
	 							   echo 'Invalid credentials.';
	 							   echo "<a href = 'login.php'> Go back </a>";
											}

						 
						 }
				else {
					
				echo "user not found<br> Contact System Administrator";

			 	
			 	 }		 	 
}

	if (!isset($_SESSION["deptuserisloggedin"]))
		{
			
		echo "You are not authorised <br>";
     	echo "<a href = 'login.php'> Login to continue </a>";
     	exit();
		}
?>

















