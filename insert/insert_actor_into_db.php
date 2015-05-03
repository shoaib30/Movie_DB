<?php 
	$dbhost="localhost";
	$dbuser="sid";
	$dbpass="Shoaib@123";
	$dbname="movie_db";
	$connection=mysqli_connect($dbhost,$dbuser,$dbpass,$dbname);
	
	if(mysqli_connect_error())
	{
		die("database failed". mysqli_connect_error(). " ". mysqli_connect_errno());
	}
	require_once("redirect.php");
?>
<?php

	//inserting data
	$ano=$_POST["ano"];
	$aname=$_POST["aname"];
	$dob=$_POST["dob"];
	$debut=$_POST["debut"];
	$query="INSERT into actor values('{$ano}','{$aname}','{$dob}',$debut)";
	$result1= mysqli_query($connection,$query);
	
	//inserting the actor image
	$uploads_dir = '../Actor_img';
	$tmp_name = $_FILES["img"]["tmp_name"];
    $name = $_FILES["img"]["name"];
    move_uploaded_file($tmp_name, "$uploads_dir/$name");
	$query2="INSERT into ac_img values('{$ano}','{$name}')";
	$result2= mysqli_query($connection,$query2);
	
	//checking for errors in insertion
	if(!$result1)
		die("nothing11");
	elseif(!$result2)
		die("nothing22");
	else
		redirect_to("success.php");
?>
<?php
	mysqli_close($connection);
?>
	