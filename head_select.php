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
	
	if ($_GET["id"]==1)
	{
		redirect_to("movie_list.php");
		
	}
	elseif($_GET["id"]==2)
	{
		redirect_to("actor_list.php");
	}
	elseif($_GET["id"]==3)
	{
		redirect_to("director_list.php");
	}
?>