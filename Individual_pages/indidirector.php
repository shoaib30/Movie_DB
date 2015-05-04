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
	require_once("../redirect.php");
?>

<?php 
	$dno=$_GET["dno"];
	//from director table
	$query1="select * from directors where dno='{$dno}'";
	$result1= mysqli_query($connection,$query1);
	
	//from poster table
	$query2="select img from dr_img where dno='{$dno}'";
	$result2= mysqli_query($connection,$query2);
	
	//all movies directed
	$query3="select movie.mno,mname from movie,mv_dr where movie.mno=mv_dr.mno and dno='{$dno}'";
	$result3= mysqli_query($connection,$query3);
	
	
	if(!$result1)
		die("nothing11");
	elseif(!$result2)
		die("nothing22");
	elseif (!$result3)
		die("nothing33");
?>

<?php

	$row=mysqli_fetch_assoc($result1);
		$dname=$row["DNAME"];
		$dob=$row["DOB"];
	
	$row2=mysqli_fetch_assoc($result2);
		$img=$row2["img"];
		
	$mname=array();
	$mno=array();
	$i=0;
	while($row3=mysqli_fetch_assoc($result3))
	{
		$mno[$i]=$row3["mno"];
		$mname[$i++]=$row3["mname"];
	}
	
?>
		




<?xml version='1.0' encoding="utf-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhhtml.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
	<title>Actor Page</title>
	<link type = "text/css" rel = "stylesheet" href = "page.css"/>
</head>

<body width="100%">
	<table width="100%" border="0">
	<tr>
		<td rowspan="2" align="center"><img src="../Director_img/<?php echo $img ?>" alt="Picture" style="width:350px;height:500px"/></td>
		<td><h1><?php echo $dname ?></h1></td>
	</tr>
	<tr class="sty1">
		<td>Date Of birth : <?php echo $dob ?></td>
	</tr>

	<tr>
		<td colspan="2" align="center">Movies Directed :
																<?php 
															
																if($i)
																{
																	$count=0;
															?>
																<a href="indimovie.php?mno=<?php echo $mno[$count]; ?>">
															
															<?php
																	echo $mname[$count++];
															?>
																</a>
															
															<?php
																
																	while($count<$i)
																	{
																		echo ", ";
															?>	
															
																<a href="indimovie.php?mno=<?php echo $mno[$count]; ?>">
															
															<?php
																		echo $mname[$count++];
															?>
																</a>
															<?php
																	}
																}
															?> </td>
	</tr>
	</table>
</body>
</html>