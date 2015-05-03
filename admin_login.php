<?php require_once("./redirect.php");
	
	
	
	$user=$_POST["user"];
	$pass=$_POST["pass"];
	if($user=="sid" && $pass="Shoaib@123")
		redirect_to("./insert/insert_frame.xhtml");
	else
		echo "<h1>Wrong Credentials</h1>";
?>