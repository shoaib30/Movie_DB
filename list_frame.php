<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 frameset//EN" "http://www.w3.org/TR/xhtml10/DTD/xhtml-frameset.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>List Frames</title></head>

<?php $id=$_GET["id"];?>

<frameset cols="200pt,*" frameborder="0" border="0" framespacing="0"> 
	<frame src= <?php
	if($id==0)
		echo "movie_side_bar.xhtml";
	elseif($id==1)
		echo "actor_side_bar.xhtml";
	elseif($id==2)
		echo "movie_side_bar.xhtml"; ?>	
		noresize="noresize" scrolling="no"/>
	<frame src= <?php
	if($id==0)
		echo "movie_list.xhtml";
	elseif($id==1)
		echo "actor_list.xhtml";
	elseif($id==2)
		echo "movie_list.xhtml"; ?> frameborder="0" noresize="noresize" name="list_frame"/>
</frameset>
</html>