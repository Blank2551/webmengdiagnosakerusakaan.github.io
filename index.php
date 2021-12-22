<?php include 'header.php';
session_start();
if(!isset($_SESSION["login"])){
    header("Location: login.php");
    exit;
}?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HOME</title>
</head>
<body>
<div class="d-grip gap-2 col-3 mx-auto">
    <a href="mesin.php"><button class="btn btn-primary" type="button">Mesin</button></a>
    <a href="kelistrikan.php"><button class="btn btn-primary" type="button">kelistrikan</button></a>
    <a href="rem.php"><button class="btn btn-primary" type="button">Rem</button></a>
</div>
</body>
</html>

