<?php
session_start();
if (empty($_SESSION)) {
    header("location:Number.php");die; 
  }
////session_start();
///$se=$_SESSION['test'];
////echo $se;
////echo $_SESSION['resu']."  ".$_SESSION['test'];
/////header("location:Result.php");die;
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <title>Result</title>
</head>
<body>
<div class="container">
    <div class="row">
     <div class="col-12" >
     <div class="d-flex justify-content-center">
        <div>
            <br><br>
     <h1>Result</h1>
<label for="">Are you satisfied with the level of cleanliness?</label>
<label for=""><?php echo $_SESSION['review'];?></label>
<br>
<label for="">Are you satisfied with the prices of the services?</label>
<label for=""><?php echo $_SESSION['review1'];?></label>
<br>
<label for="">Are you satisfied with the nursing service?</label>
<label for=""><?php echo $_SESSION['review2'];?></label>
<br>
<label for="">Are you satisfied with the level of the doctor?</label>
<label for=""><?php echo $_SESSION['review3'];?></label>
<br>
<label for="">Are you satisfied with the calmness in the hospital?</label>
<label for=""><?php echo $_SESSION['review4'];?></label>
<?php
if ($_SESSION['resu']<25) {
    echo "<p>thank you  we will follow up with you on"." ".$_SESSION['test']."</p>";
}else{
    echo "<p>thank you  four your review </p>";
}
?>
</div>
</div>
</div>
</div>
</div>
</body>
</html>


