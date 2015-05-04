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
	$ano=$_GET["ano"];
	//from actor table
	$query1="select * from actor where ano='{$ano}'";
	$result1= mysqli_query($connection,$query1);
	
	//from poster table
	$query2="select img_name from ac_img where ano='{$ano}'";
	$result2= mysqli_query($connection,$query2);
	
	//all movies acted
	$query3="select mname,movie.mno from movie,mv_ac where movie.mno=mv_ac.mno and ano='{$ano}'";
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
		$aname=$row["ANAME"];
		$dob=$row["DOB"];
		$debut=$row["DEBUT"];
	
	
	$row2=mysqli_fetch_assoc($result2);
		$img=$row2["img_name"];
		
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
	<link type = "text/css" rel = "stylesheet" href = "page.css" />
</head>

<body width="100%">
	<table width="100%" border="0">
	<tr>
		<td rowspan="3" align="center"><img src="../Actor_img/<?php echo $img ?>" alt="Picture" style="width:350px;height:500px"/></td>
		<td><h1><?php echo $aname ?></h1></td>
	</tr>
	<tr class="sty1">
		<td>Date Of birth : <?php echo $dob ?></td>
	</tr>
	<tr class="sty1">
		<td>Debut : <?php echo $debut ?></td>
	</tr>
	<tr>
		<td colspan="2" align="center">Movies Acted in : 
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