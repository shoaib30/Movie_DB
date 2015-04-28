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
	$dno=$_POST["dno"];
	$dname=$_POST["dname"];
	$dob=$_POST["dob"];
	$query="INSERT into directors values($dno,'{$dname}','{$dob}')";
	$result1= mysqli_query($connection,$query);
	
	//inserting the director image
	$uploads_dir = './director_img';
	$tmp_name = $_FILES["img"]["tmp_name"];
    $name = $_FILES["img"]["name"];
    move_uploaded_file($tmp_name, "$uploads_dir/$name");
	$query2="INSERT into dr_img values('{$dno}','{$name}')";
	$result2= mysqli_query($connection,$query2);
	
	//checking for errors in insertion
	if(!$result1)
		die("nothing11");
	elseif(!$result2)
		die("nothing22");
	
?>
<?php
	mysqli_close($connection);
?>
	