<?php 

include 'koneksi.php';
session_start();

if(isset($_SESSION["login"])){
    header("Location: index.php");
    exit;
}
    
    if(isset($_POST['login'])){
        $username = $_POST["username"];
        $password = $_POST["password"];
        $result = mysqli_query($kon,"SELECT * FROM users WHERE username = '$username'");
        //cek username
        if(mysqli_num_rows($result)===1){
            //cek password
            $row = mysqli_fetch_assoc($result);
           if (password_verify($password, $row["password"]));
            // set session
            $_SESSION["login"]= true;
            header("Location: index.php");
            exit;
        }
        $error = true;
        
    }
?>
<!DOCTYPE html>
<html>
    <head>
        <title>Halaman Login</title>
        <link rel="stylesheet" href="bootstrap.min.css">
        <style type="text/css">html,body{height: 100%; background-color: black;}
        h1{
            color: white;
            
        }
        label.username{
            color: white;
            padding-top: 50px;
            
        }
        label.password{
            color: white;
            padding-bottom: 50px;
            
            
        }
        button.login{
            color: blue;
        }
        button.registrasi{
            color: blue;
            
        }
        input.username{
            margin-right: 250px;
        }
        input.password{
            margin-right: 250px;
        }
        </style>
    </head>
    <body>
    
        <h1 align="center">Halaman Login</h1>
        <img src="logo.jpg" alt="" style="width: 200px;" align="left">
        <?php if(isset($error)) : ?>
            <p style="color: red; font-style: italic;">username/password salah</p>
        <?php endif; ?>
        <center>
        <form action="" method="POST">
            <ul>
                <li style="list-style: none;">
                    <label class="username" for="username">username :</label>
                    <input class="username" type="text" name="username" id="username">
                </li>
                <li style="list-style: none;">
                    <label class="password" for="password">password :</label>
                    <input class="password" type="password" name="password" id="password">
                </li>
                <li>
                    <button class="login" type="submit" name="login">Login</button>
                </li>
                <button type="submit" name="registrasi"><a class="registrasi" href="registrasi.php">Registrasi</a></button>
            </ul>
        </form>
        </center>
    </body>
</html>
