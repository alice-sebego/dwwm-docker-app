<?php 
	session_start([]);
	include "config.php";
  	include "classes/DB.php";
  	include "classes/Texte.php";
  	include "classes/USER.php";
  	$DB= new Db("db","APP_DATABASE", "MYSQL_USER", "MYSQL_PASSWORD");

?>