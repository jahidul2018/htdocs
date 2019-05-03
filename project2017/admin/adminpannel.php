<html>
<head>
	<title>Admin pannel</title>
	<link ref="stylesheet" href="s.css">

</head>
<?php include 'conn.php';?>
<?php include 'fn.php';?>
<?php 
if ($_SESSION['user_id']!=true) {
	echo "You are not an admin";
	echo "<a href='login.php'>Another Try ";

}

?>

<?php 

if ($user_level !=1) {

	header('location:login.php');

}
?>

<div>
 

</div>

</html>
