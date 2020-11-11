<?php 
session_start();
?>

<?php
	mysql_connect("localhost", "root", "");
	mysql_select_db("toko");
	
	// settings
	$url = "http://localhost/toko/";
	$title = "Website Aplikasi Toko";
	$no = 1;
	
	function alert($command){
		echo "<script>alert('".$command."');</script>";
	}
	function redir($command){
		echo "<script>document.location='".$command."';</script>";
	}
	function validate_admin_not_login($command){
		if(empty($_SESSION['iam_admin'])){
			redir($command);
		}
	}
?>