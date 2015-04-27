<?xml version='1.0' encoding="utf-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhhtml.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Page</title>
	<style>
	tr.sty1
	{
		font-size:25px;
		font-family:"Copperplate Gothic",serif;
	}
	h1
	{
		font-size:45px;
		font-family:"Copperplate Gothic",serif;
	}
	</style>
</head>


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
	$mno=$_GET["mno"];
	//from movie table
	$query1="select * from movie where mno='{$mno}'";
	$result1= mysqli_query($connection,$query1);
	
	//from poster table
	$query2="select img_name from mv_post where mno='{$mno}'";
	$result2= mysqli_query($connection,$query2);
	
	
	//from gallery table
	$query3="select * from mv_gallery where mno='{$mno}'";
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
	
		//print_r($row);
		$mname=$row["MNAME"];
		$rating=$row["RATING"];
		$dor=$row["DOR"];
		$boc=$row["BOC"];
	
	
	$row2=mysqli_fetch_assoc($result2);
	
		$img_name=$row2["img_name"];
		//print_r($row2);
		//echo $img_name;
	$row3=mysqli_fetch_assoc($result3);
	
		$img1=$row3["IMG1"];
		$img2=$row3["IMG2"];
		$img3=$row3["IMG3"];
		//print_r($row3);

?>

<body width="100%">
	<table width="100%" border="0">
	<tr>
		<td rowspan="4" align="center"><img src="<?php echo "./Posters/$img_name"?>.jpg" alt="Poster" style="width:350px;height:500px"/></td>
		<td><h1><?php echo strtoupper($mname)?></h1></td>
	</tr>
	<tr class="sty1">
		<td>Rating : <?php echo $rating ?>/10</td>
	</tr>
	<tr class="sty1">
		<td>Actors: Christian Bale</td>
	</tr>
	<tr class="sty1">
		<td>Director: Christopher Nolan</td>
	</tr>
	<tr >
		<td colspan="2">Release Date: <?php echo $dor ?> </td>
	</tr>
	<tr>
		<td colspan="2">Box Office Collection: $<?php echo $boc ?> </td>
	</tr>
	<tr>
		<td colspan="2"><h2>Summary</h2><br/>Batman raises the stakes in his war on crime. With the help of Lieutenant Jim Gordon and District Attorney Harvey Dent, Batman sets out to dismantle the remaining criminal organizations that plague the city streets. The partnership proves to be effective, but they soon find themselves prey to a reign of chaos unleashed by a rising criminal mastermind known to the terrified citizens of Gotham as The Joker.</td>
	</tr>
	<!--<tr>

	<td colspan="2""><caption style="font-size:40px">Trailor<iframe width="720" height="480" src="https://www.youtube.com/embed/EXeTwQWrcwY" frameborder="0"></iframe></caption></td>
	</tr>
	<tr>
		<td colspan="2"><caption style="font-size:20px">Gallery<iframe width="900" height="500" src="slider.html" frameborder="0"></iframe></caption></td>
	</tr>-->

	</table>
</body>
</html>
		