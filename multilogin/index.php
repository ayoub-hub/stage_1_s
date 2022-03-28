<?php 
session_start();
  include("connect.php");

   
   $output = "";

  if (isset($_POST['login'])) {
  	   
  	   $uname = $_POST['uname'];
  	   $role = $_POST['role'];
  	   $pass = $_POST['pass'];

  	   if (empty($uname)) {
  	   	
  	   }else if(empty($role)){

  	   }else if(empty($pass)){

  	   }else{

         $query = "SELECT * FROM users WHERE surname='$uname' AND role='$role' AND password='$pass'";
         $res = mysqli_query($db,$query);

         if (mysqli_num_rows($res) == 1) {

         	   if($role == "admin"){
                
                $_SESSION['admin'] = $uname;
                header("Location:formulaire.php");


         	  }
         	 $output .= "you have logged-In";
         }else{
             $output .= "Failed to login";
         }

  	   }
	}
  




 ?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

	<title>login</title>

</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
   	 <h3 class="navbar-brand text-white">LOGIN</h3>


   	 <div class="mr-auto"></div>

   	 <ul class="navbar-nav">
   	
               <?php  if(isset($_SESSION['admin'])){ ?>
              <li class="nav-item">
   	 		<a href="index.php" class="nav-link"><?php echo $_SESSION['admin']; ?></a>
   	 	</li>
   	 	<li class="nav-item">
   	 		<a href="logout.php" class="nav-link">Logout</a>
   	 	</li>
              <?php }else{ ?>
                  <li class="nav-item">
   	 		<a href="index.php" class="nav-link">Login</a>
   	 	</li>
   	 	
              <?php }



   	 	 ?>
   	 </ul>
   </nav>



	<div class="container">
		<div class="col-md-12">
			<div class="row d-flex justify-content-center">
				<div class="col-md-6 shadow-sm" style="margin-top:100px;">
					<form method="post">
						<h3 class="text-center my-3">Login</h3>
						<div class="text-center"><?php echo $output; ?></div>
						<label>Username</label>
						<input type="text" name="uname" class="form-control my-2" placeholder="Enter Username" autocomplete="off" required>
                         
                         <label>Select Role</label>
						<select name="role" class="form-control my-2" required>
							<option value="">Selete Role</option>
							<option value="admin">admin</option>
						</select>

						<label>Password</label>
						<input type="password" name="pass" class="form-control my-2" placeholder="Enter Password" required>

						<input type="submit" name="login" class="btn btn-success" value="Login">
					</form>
				</div>
			</div>
		</div>
	</div>

</body>
</html>