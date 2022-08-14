<?php
        session_start();
        if($_GET){
            $nume=$_GET["number2"];
            $_SESSION['test']= $nume;
           header("location:Review.php");die;
           }
    ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">

    <title>Hospital</title>
</head>

<body>
  
     <div class="container">
        <br>
        <h1>Hospital</h1>
        <br>
    <form  >
<input type="text" name="number2" class="form-control" placeholder="enter phone number">
<br>

<br>
<input type="submit" class="btn btn-success" name="op" value="next">
</div>
</body>
</html>