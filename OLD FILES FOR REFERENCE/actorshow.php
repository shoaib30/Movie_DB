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
	
?>
<?php
	$query="select * from actor";
	$result= mysqli_query($connection,$query);
	$query1="select * from ac_img";
	$result1= mysqli_query($connection,$query1);
	
	if(!$result)
		die("nothing");
	
?>

<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://wwww.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head> <title> hello </title></head>
	<body>
		<table border="5">
			<thead>
				<td>ANO</td>
				<td>ACTOR NAME</td>
				<td>DATE OF BIRTH</td>
				<td>DEBUT YEAR</td>
				
			</thead>
		<?php
			while($row=mysqli_fetch_assoc($result))
			{
				
				echo "<tr>";
					echo"<td>".$row["ANO"]."</td>";
					echo"<td>".$row["ANAME"]."</td>";
					echo"<td>".$row["DOB"]."</td>";
					echo"<td>".$row["DEBUT"]."</td>";
					//echo"<td>".$row["BOC"]."</td>";
				echo "</tr>";
					
			}
		?>
		</table>
		<?php
			while($row=mysqli_fetch_assoc($result1))
			{
				echo "<br/>";
					echo"<h3>".$row["ANO"]."</h3>";
		?>
			<br/><img src="<?php echo "./actor_img/".$row["IMG_NAME"];?>"/><br/>
			<?php		
			} 
			?>
	
		
		<?php
			mysqli_free_result($result);
		?>
		
	</body>
</html>
<?php
	mysqli_close($connection);
?>