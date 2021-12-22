<?php 
$kon=mysqli_connect("localhost","root","","database_kerusakaan",3306);
if(mysqli_connect_errno()){
    echo "Failed To Connect to Mysql: ".mysqli_connect_error();
}
function registrasi($data){
    global $kon;
    $username = strtolower(stripslashes($data["username"]));
    $password = mysqli_real_escape_string($kon, $data["password"]);
    $password2 = mysqli_real_escape_string($kon, $data["password2"]);

    //cek username sudah ada atau belum
    $result = mysqli_query($kon,"SELECT username FROM users WHERE username ='$username'");
    if(mysqli_fetch_assoc($result)){
        echo "<script>
                alert('username sudah terdaftar')
            </script>";
            return false;
    }

    //cek konfirmasi password
    if($password !== $password2){
        echo "<script>
                alert('konfirmasi password tidak sesuai');
            </script>";
            return false;
    }
    //enkripsi password
    $password = password_hash($password, PASSWORD_DEFAULT);
    //tambahkan userbaru ke database
    mysqli_query($kon,"INSERT INTO users VALUES('','$username','$password')");

    return mysqli_affected_rows($kon);

}
?>