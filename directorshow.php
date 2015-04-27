<?php 
	$dbhost="localhost";
	$dbuser="sid";
	$dbpass="qwerty";
	$dbname="movie_db";
	$connection=mysqli_connect($dbhost,$dbuser,$dbpass,$dbname);
	
	if(mysqli_connect_error())
	{
		die("database failed". mysqli_connect_error(). " ". mysqli_connect_errno());
	}
	
?>
<?php
	$query="select * from directors";
	$result= mysqli_query($connection,$query);
	
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
				<td>DNO</td>
				<td>DIRECTOR NAME</td>
				<td>DATE OF BIRTH</td>
				
				
			</thead>
		<?php
			while($row=mysqli_fetch_assoc($result))
			{
				
				echo "<tr>";
					echo"<td>".$row["DNO"]."</td>";
					echo"<td>".$row["DNAME"]."</td>";
					echo"<td>".$row["DOB"]."</td>";
					
					
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