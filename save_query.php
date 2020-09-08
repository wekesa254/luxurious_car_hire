<?php
	require_once "class.php";
	$conn = new db_class();
	if(ISSET($_POST['submit'])){
		$fname = $_POST['fname'];
		$lname = $_POST['lname'];
		$mail = $_POST['mail'];
		$user = $_POST['user'];
		$pwd = $_POST['pwd'];

		$conn->save($fname, $lname, $mail, $user, $pwd);
		echo '<script>alert("Successfully saved!")</script>';
		echo '<script>window.location= "index.php"</script>';
	}	
?>