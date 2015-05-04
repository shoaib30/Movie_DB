<?xml version='1.0' encoding="utf-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhhtml.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<body>
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
	$cat=$_POST["category"];
	$val=$_POST["search"];
	echo "$cat,$val";
	if($cat==1)
		$query="select MNO from MOVIE where MNAME='$val';";
	elseif($cat==2)
		$query="select ANO from ACTOR where ANAME='$val';";
	elseif($cat==3)
		$query="select DNO from DIRECTORS where DNAME='$val';";
	$result= mysqli_query($connection,$query);
	if(!$result)
		die("nothing");
	$row=mysqli_fetch_assoc($result);
	if($cat==1)
	{
		$red=$row["MNO"];
		?><script type="text/javascript">
		top.location.href = "./Individual_pages/indimovie.php?mno=<?php echo $red?>"
		</script><?php
		//redirect_to("./Individual_pages/indimovie.php?mno=$red");
	}
	elseif($cat==2)
	{
		$red=$row["ANO"];
		redirect_to("./Individual_pages/indiactor.php?ano=$red");
	}
	elseif($cat==3)
	{
		$red=$row["DNO"];
		redirect_to("./Individual_pages/indidirector.php?dno=$red");
	}
	echo $red;
?>
</body>
</html>