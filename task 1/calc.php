<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>calc</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
</head>
<body>
    <?php 
    

    if($_GET){
     $firstnum=   $_GET["number"];
    $secondN= $_GET["number2"];
    $answer=$_GET["op"];
    
    }
   
    
    ?>
   
    <div class="container">
        <br>
        <h1>calc</h1>
    <form >
<input type="text" name="number2" class="form-control">
<br>
<input type="text" name="number" class="form-control">
<br>
<input type="submit" class="btn btn-success" name="op" value="+">
<input type="submit" class="btn btn-success" name="op" value="-">
<input type="submit" class="btn btn-success" name="op" value="*">
<input type="submit" class="btn btn-success" name="op" value="/">
<input type="submit" class="btn btn-success" name="op" value="%">
</form>
<br>
<br>

<?php
if (isset($answer)) {
switch ($answer) {
    case '+':
        echo  $firstnum+$secondN;
        break;
        case '-':
            echo  $firstnum-$secondN;
            break;
            case '*':
                echo  $firstnum*$secondN;
                break;
                case '/':
                    echo  $firstnum/$secondN;
                    break;
                    case '%':
                        echo  $firstnum%$secondN;
                        break;
    
    default:
      
        break;
    }
}

?>
</div>
</body>
</html>