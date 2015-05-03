<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 frameset//EN" "http://www.w3.org/TR/xhtml10/DTD/xhtml-frameset.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>List Frames</title></head>

<?php $id=$_GET["id"];?>

<frameset cols="300pt,*" frameborder="0" border="0" framespacing="0"> 
	<frame src= <?php
	if($id==0)
		echo "./sidebars/movie_side_bar.xhtml";
	elseif($id==1)
		echo "./sidebars/actor_side_bar.xhtml";
	elseif($id==2)
		echo "./sidebars/director_side_bar.xhtml"; ?>	
		noresize="noresize" scrolling="no"/>
	<frame src= <?php
	if($id==0)
		echo "./lists/movieshow.php";
	elseif($id==1)
		echo "./lists/actorshow.php";
	elseif($id==2)
		echo "./lists/directorshow.php"; ?> frameborder="0" noresize="noresize" name="list_frame"/>
</frameset>
</html>