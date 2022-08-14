<?php
session_start();
if (empty($_SESSION)) {
    header("location:Number.php");die; 
  }
if($_GET){
    $res=0;
    $res1=0;
    $res2=0;
    $res3=0;
    $res4=0;
    $review="";
    $review1="";
    $review2="";
    $review3="";
    $review4="";
    if($_GET["one"]==1){
        $res=0;
        $review="bad";
    }elseif($_GET["one"]==2){
     $res=3;
     $review="good";
    }elseif($_GET["one"]==3){
       $res=5;
       $review="verygood";
    }elseif($_GET["one"]==4){
    $res=10;
    $review="exclant";
    }
    if($_GET["tow"]==5){
        $res1=0;
        $review1="bad";
    }elseif($_GET["tow"]==6){
     $res1=3;
     $review1="good";
    }elseif($_GET["tow"]==7){
       $res1=5;
       $review1="verygood";
    }elseif($_GET["tow"]==8){
    $res1=10;
    $review1="exclant";
    }
    if($_GET["three"]==9){
        $res2=0;
        $review2="bad";
    }elseif($_GET["three"]==10){
     $res2=3;
     $review2="godd";
    }elseif($_GET["three"]==11){
       $res2=5;
       $review2="verygood";
    }elseif($_GET["three"]==12){
    $res2=10;
    $review2="exclant";
    }
    if($_GET["four"]==13){
        $res3=0;
        $review3="bad";
    }elseif($_GET["four"]==14){
     $res3=3;
     $review3="good";
    }elseif($_GET["four"]==15){
       $res3=5;
       $review3="verygood";
    }elseif($_GET["four"]==16){
    $res3=10;
    $review3="exclant";
    }
    if($_GET["five"]==17){
        $res4=0;
        $review4="bad";
    }elseif($_GET["five"]==18){
     $res4=3;
     $review4="good";
    }elseif($_GET["five"]==19){
       $res4=5;
       $review4="verygood";
    }elseif($_GET["five"]==20){
    $res4=10;
    $review4="exclant";
    }
    $sum=$res+$res1+$res2+$res3+$res4;
   /// echo $sum;
    $_SESSION['resu']= $sum;
    $_SESSION['review']= $review;
    $_SESSION['review1']= $review1;
    $_SESSION['review2']= $review2;
    $_SESSION['review3']= $review3;
    $_SESSION['review4']= $review4;
    header("location:Result.php");die;  
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <title>Review</title>
</head>
<body>
    <br>
    <div class="container">
    <div class="row">
     <div class="col-12">
        <div class="d-flex justify-content-center">
    <form action="">
    <h1>Review</h1>
    <br>
<label for="">Are you satisfied with the level of cleanliness?</label>
<label for="">bad</label>
<input type="radio" name="one" id="" value=1 >
<label for="">|</label>
<label for="">good</label>
<input type="radio" name="one" id="" value=2 >
<label for="">|</label>
<label for="">veary good</label>
<input type="radio" name="one" id="" value=3 >
<label for="">|</label>
<label for="">exclnt</label>
<input type="radio" name="one" id="" value=4 >
<br>
<label for="">Are you satisfied with the prices of the services?</label>
<label for="">bad</label>
<input type="radio" name="tow" id="" value=5 >
<label for="">|</label>
<label for="">good</label>
<input type="radio" name="tow" id="" value=6  >
<label for="">|</label>
<label for="">veary good</label>
<input type="radio" name="tow" id="" value=7 >
<label for="">|</label>
<label for="">exclnt</label>
<input type="radio" name="tow" id="" value=8 >
<br>
<label for="">Are you satisfied with the nursing service</label>
<label for="">bad</label>
<input type="radio" name="three" id="" value=9 >
<label for="">|</label>
<label for="">good</label>
<input type="radio" name="three" id="" value=10 >
<label for="">|</label>
<label for="">veary good</label>
<input type="radio" name="three" id="" value=11 >
<label for="">|</label>
<label for="">exclnt</label>
<input type="radio" name="three" id="" value=12 >
<br>
<label for="">Are you satisfied with the level of the doctor?</label>
<label for="">bad</label>
<input type="radio" name="four" id="" value=13 >
<label for="">|</label>
<label for="">good</label>
<input type="radio" name="four" id="" value=14 >
<label for="">|</label>
<label for="">veary good</label>
<input type="radio" name="four" id="" value=15 >
<label for="">|</label>
<label for="">exclnt</label>
<input type="radio" name="four" id="" value=16 >
<br>
<label for="">Are you satisfied with the calmness in the hospital?</label>
<label for="">bad</label>
<input type="radio" name="five" id="" value=17 >
<label for="">|</label>
<label for="">good</label>
<input type="radio" name="five" id="" value=18 >
<label for="">|</label>
<label for="">veary good</label>
<input type="radio" name="five" id="" value=19 >
<label for="">|</label>
<label for="">exclnt</label>
<input type="radio" name="five" id="" value=20 >
<br>
<input type="submit" class="btn btn-success" value="next">
</form>
</div>
</div>
</div>
</div>
<?php

?>
</body>
</html>