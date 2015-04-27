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
	$mno=$_POST["mno"];
	$mname=$_POST["mname"];
	$dor=$_POST["dor"];
	$rating=$_POST["rating"];
	$boc=$_POST["boc"];
	$nac=$_POST["nac"];
	$nacc=$_POST["nac"];
	$flag=1;
	$query="INSERT into movie values('{$mno}','{$mname}','{$dor}',$rating,$boc)";
	$result= mysqli_query($connection,$query);
	
	//inserting poster
	$uploads_dir = './Posters';
	$tmp_name = $_FILES["file"]["tmp_name"];
    $name = $_FILES["file"]["name"];
    move_uploaded_file($tmp_name, "$uploads_dir/$name");
	$query2="INSERT into mv_post values('{$mno}','{$name}')";
	$result2= mysqli_query($connection,$query2);
	
	//insert gallery
	$uploads_dir = './Gallery';
	$tmp_name1 = $_FILES["img1"]["tmp_name"];
	$tmp_name2 = $_FILES["img2"]["tmp_name"];
	$tmp_name3 = $_FILES["img3"]["tmp_name"];
	$name1 = $_FILES["img1"]["name"];
	$name2 = $_FILES["img2"]["name"];
	$name3 = $_FILES["img3"]["name"];
	move_uploaded_file($tmp_name1, "$uploads_dir/$name1");
	move_uploaded_file($tmp_name2, "$uploads_dir/$name2");
	move_uploaded_file($tmp_name3, "$uploads_dir/$name3");
	$query3="INSERT into mv_gallery values('{$mno}','{$name1}','{$name2}','{$name3}')";
	$result3= mysqli_query($connection,$query3);
	
	//checking for errors in insertion
	if(!$result)
		die("nothing11");
	elseif(!$result2)
		die("nothing22");
	elseif(!$result3)
		die("noting33");
?>
<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://wwww.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head> <title> hello </title></head>
	<body>
		<form action="insert_drac_into_db.php?nac=<?php echo $nacc ?>&mno=<?php echo $mno?>"  method="post">
		<?php
			$query4="select * from actor";
			
			while($flag<=$nac)
			{
				$result4= mysqli_query($connection,$query4);
		?>
			<br/><label>Choose actor<select name="ac<?php echo $flag ?>">
				<?php
					while($row=mysqli_fetch_assoc($result4))
					{
				?>
					<option value="<?php echo $row["ANO"]?>"> <?php echo $row["ANAME"]?></option>
		<?php		}
			?></select></label>
			<?php
			$flag++;
			}?>
			
			<?php
			$query5="select * from directors";
			$result5= mysqli_query($connection,$query5);?>
			
			<br/><label>Choose director<select name="dr">
				<?php
					while($row=mysqli_fetch_assoc($result5))
					{
				?>
					<option value="<?php echo $row["DNO"]?>"> <?php echo $row["DNAME"]?></option>
		<?php		
					}
		?></select></label>
		<br/><input type=submit name="sub" value="Submit motherf**ker!"/>
		</form>
	</body>
<?php
	mysqli_close($connection);
?>
</html>