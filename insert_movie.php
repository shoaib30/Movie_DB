<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://wwww.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head> <title> hello </title></head>
	<body>
		<form action="insert_movie_into_db.php" method="post" enctype="multipart/form-data">
			mno<input type="text" name="mno" value="" /> <br />
			mname<input type="text" name="mname" value="" /><br />
			date of release<input type="date" name="dor" value="" /> <br />
			rating<input type="text" name="rating" value="" /> <br />
			box office collection<input type="text" name="boc" value="" /> <br />
			<br />
			<label>choose file<input type="file" name="file" value="upload"/></label>
			<br/>
			<label>choose img1<input type="file" name="img1" value="upload"/></label>
			<br/>
			<label>choose img2<input type="file" name="img2" value="upload"/></label>
			<br/>
			<label>choose img3<input type="file" name="img3" value="upload"/></label>
			<br/>
			<label>no of actors<input type="number" name ="nac" /></label><br />
			
			<input type="submit" name="submit" value="submit" />
			<br />
		</form>
	
	</body>
</html>