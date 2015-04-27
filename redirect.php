<?php
function redirect_to($loc)
{
	header("Location: ".$loc);
	exit;
}
?>