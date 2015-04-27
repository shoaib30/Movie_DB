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
	
	if(!$result)
		die("nothing");
	
?>

<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://wwww.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head> <title>MOVIE LIST</title></head>
	<body>
		<h1>ACTOR</h1>
	<table action="" border="1">
		<tr>
			<th><h3>Sl. NO</h3></th>
			<th><h3>Actor</h3></th>
		</tr>
		<?php
			while($row=mysqli_fetch_assoc($result))
			{
				
				echo "<tr>";
					echo"<td>".$row["ANO"]."</td>";
					echo"<td>".$row["ANAME"]."</td>";
				echo "</tr>";
					
			}
		?>
		</table>
		
		<?php
			mysqli_free_result($result);
		?>
		
	</body>
</html>
<?php
	mysqli_close($connection);
?>