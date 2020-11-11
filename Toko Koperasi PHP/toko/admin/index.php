<?php
	include"../inc/config.php";
	include"inc/header.php";

	$email = $_SESSION['iam_user'];	

	$z = mysql_query("select*from user WHere email='$_SESSION[iam_user]'") or die("mySQL error: ". mysql_error());  ;
	$a = mysql_fetch_object($z);
	$c = $a->status;

	if($c != 'admin') {
		redir("../index.php");
	}
?>

	<div class="container text-center" style="margin-top:20px;padding:50px;">

		<?php
			$q = mysql_query("select*from user WHere email='$_SESSION[iam_user]'");
			$u = mysql_fetch_object($q);
		?>
		<h2>Hi, <?php echo $u->nama ?></h2>
		<br>
		<br>
		<h1>Welcome to Administrator</h1>
    </div> <!-- /container -->


<?php include"inc/footer.php"; ?>
