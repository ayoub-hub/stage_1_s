<?php 
include("connect.php"); 

 if(isset($_POST['submit'])){

     $np=$_POST['nom'];

     
     $mail=$_POST['mail'];
    
     $tel=$_POST['tel'];
    
     $nom_f=$_POST['frm'];
    
    
     $debut=$_POST['debut'];
     $fin=$_POST['fin'];
    
    
    $reqt="INSERT INTO fiche(nom_p,mail,tel,name_f,debut_f,fin_f)

              VALUES ('$np','$mail','$tel','$nom_f','$debut','$fin')";

              $res=mysqli_query($db,$reqt);
              if($res){
                 echo'<script>alert("Insertion le fiche du presence avec succes")</script>';  
               }else{
                     echo'<script>alert("il y a une probleme d insertion le fiche du presence ")</script>';  

              } 

 



}
     ?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

   <style>
body {
  
  margin: 50px;
  

}
fieldset.scheduler-border {
    border: solid 1px #DDD !important;
    padding: 0 10px 10px 10px;
    border-bottom: none;
}
</style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
   	 <h3 class="navbar-brand text-white">page de presence</h3>


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
<form action="" method="POST">
 <fieldset class="scheduler-border">
    <legend class="scheduler-border">fiche de presence</legend>
  <div class="form-group">
    <label for="formGroupExampleInput">nom et prenom</label>
    <input type="text" class="form-control" id="formGroupExampleInput" name="nom"  placeholder="nom et prenom">
  </div>

  <div class="form-group">
    <label for="formGroupExampleInput2">mail</label>
    <input type="text" class="form-control" id="formGroupExampleInput2" name="mail" placeholder="mail">
  </div>
  <div class="form-group">
    <label for="formGroupExampleInput2">Tel</label>
    <input type="text" class="form-control" id="formGroupExampleInput2" name="tel" placeholder="telephone">
  </div>
  <div class="form-group">
    <label for="formGroupExampleInput2">nom de formation</label>
    <input type="text" class="form-control" id="formGroupExampleInput2" name="frm" placeholder="nom de formation">
  </div>
  

   <div class="row">
    <div class="col">
      <label for="formGroupExampleInput2">periode de formation du</label>
      <input type="date" class="form-control" name="debut" placeholder="debut de formation">
    </div>
    <div class="col">
      <label for="formGroupExampleInput2">au</label>
      <input type="date" class="form-control" name="fin" placeholder="fin du formation">
    </div>
  </div>
 
 

  
   <center><button type="submit" class="btn btn-primary" name="submit">Submit</button></center>
  </fieldset>
</form>
</body>
</html>