<?php 
session_start();


if (isset($_SESSION['participant'])) {
	unset($_SESSION['participant']);
	header("Location:index.php");
}else if(isset($_SESSION['formateur'])){
	unset($_SESSION['formateur']);
	header("Location:index.php");
}
else if(isset($_SESSION['admin'])){
	unset($_SESSION['admin']);
	header("Location:index.php");
}



 ?>