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

	$nac=$_GET["nac"];
	$mno=$_GET["mno"];
	$flag=1;
	while($flag<=$nac)
	{
		$ano=$_POST["ac".$flag];
		$query="insert into mv_ac values('{$mno}','{$ano}')";
		echo $mno. " - ".$ano."<br/>";
		$result= mysqli_query($connection,$query);
		$flag++;
	}
	$dno=$_POST["dr"];
	$query2="insert into mv_dr values('{$mno}','{$dno}')";
	$result2= mysqli_query($connection,$query2);
	if(!$result)
		die("nothing11");
	elseif(!$result2)
		die("nothing22");
	else
		redirect_to("success.php")
?>
