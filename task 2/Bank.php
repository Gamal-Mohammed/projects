<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
   
    <title>Bank</title>
</head>
<body>
<div class="container">

<div class="row">
           <div class="col-12">
               <br>
               <h1>bank-Loan</h1>
               <form >
                   <div class="form-group">
                       <input  class="form-control" name="name" placeholder="name">
                   </div>
                   <div class="form-group">
                       <input class="form-control" name="loan" placeholder="loan">
                   </div>
                   <div class="form-group">
                       <input class="form-control" name="years" placeholder="number of years">
                   </div>
                   
                   
                   <div class="form-group">

                       <input type="submit" class="btn btn-success"  value="Calc" id="clo">

                       </div>
                       </form>
                       <?php
                       if ($_GET) {
                        if ($_GET["years"]<=3) {
                         $res= $_GET["loan"]*0.10*$_GET["years"]/30;
                         echo $_GET["name"]." paid in month ".$res;
                        }else{
                            $res= $_GET["loan"]*0.15*$_GET["years"]/30;
                            echo $_GET["name"]." paid in month ".$res;
                        }
                       }
                       ?>
  
</div>
</body>
</html>