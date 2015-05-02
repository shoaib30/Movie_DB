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
	$query="select * from directors";
	
	$result= mysqli_query($connection,$query);
	
	
	if(!$result)
		die("nothing");
	
?>



<?xml version='1.0' encoding="utf-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhhtml.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
	<title>Director List</title>
	<link type = "text/css" rel = "stylesheet" href = "table_layout.css" />
</head>

 <body>
	<table width="100%" align="center">
		<tr>
			<th>Sl. No. </th>
			<th>Director Name </th>
			<th>Date of Birth</th>
		</tr>
		<tr>
			<td colspan="4"><hr size="5" color="black"/></td>
		</tr>
		<?php
			while($row=mysqli_fetch_assoc($result))
			{
				
				echo "<tr>";
					echo"<td>".$row["DNO"]."</td>";
					echo"<td>";
		?> 						<a href="../Individual_pages/indidirector.php?dno=<?php echo $row["DNO"] ?>" target="mainframe"> 
		<?php 		
					echo $row["DNAME"]."</a>"."</td>";
					echo"<td>".$row["DOB"]."</td>";
				echo "</tr>";
		?>
			<td colspan="4"><hr /></td>
		<?php
					
			}
		?>
	</table>
 </body>
 </html>