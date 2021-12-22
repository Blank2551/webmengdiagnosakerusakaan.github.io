<?php 
    include 'koneksi.php';
    if(isset($_POST["register"])){
        if(registrasi($_POST) > 0 ){
            echo "<script>
                    alert('user baru berhasil ditambahkan');
                </script>";
        }else{
            echo mysqli_error($kon);
        }
    }
?>


<!DOCTYPE html>
<html>
    <head>
        <title>Halam Registrasi</title>
        <style>
            label{
                display: block;
            }
            html,body{
                background-color: black;
            }
            label.username{
                color: white;
            }
            label.password{
                color: white;
            }
            label.password2{
                color: white;
            }
            h1{
                color: white;
            }
        </style>
    </head>
    <center>
    <body>
        <h1>Halaman Registrasi</h1>
        <form action="" method="POST">
            <ul>
                <li>
                    <label class="username" for="username">username :</label>
                    <input type="text" name="username" id="username">
                </li>
                <li>
                    <label class="password" for="password">password :</label>
                    <input type="password" name="password" id="password">
                </li>
                <li>
                    <label class="password2" for="password2">konfirmasi password :</label>
                    <input type="password" name="password2" id="password">
                </li>
                <li>
                    <button class="registrasi" type="submit" name="register">Registrasi </button>
                </li>
                <button class="login" type="submit" name="login"><a href="login.php">Login</a></button>
            </ul>

        </form>
        </center>
    </body>
</html>