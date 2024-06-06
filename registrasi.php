<?php

    include("config.php");

?>

<!DOCTYPE html>
<html>

<head>
    <title>login</title>
    <link rel="stylesheet" type="text/css" href="aset/registrasi.css">
</head>

<body>
    <div class="container">
        <div class="login">
            <div class="header">
                <h1>SIGN UP</h1>
            </div>
            <div class="main">
                <form action="registrasi.php" method="post">
                    <input type="text" name="username" placeholder="Username">
                    <br>
                    <input type="text" name="nomorHp" placeholder="Nomor HP">
                    <br>
                    <input type="password" name="password" placeholder="password">
                    <br>
                    <p style="font-size: 15px;"><?php
                    if (isset($_POST["login"])) {
                        if (empty($_POST["username"]) || empty($_POST["password"]) || empty($_POST["nomorHp"])) {
                            echo"Isi username/password/Nomor Hp";
                        }
                        else {
                            $username = $_POST["username"];
                            $password1 = $_POST["password"];
                            $nomor = $_POST["nomorHp"];
                            $result = mysqli_query($koneksi,"SELECT nama_lengkap FROM pengguna WHERE nama_lengkap = '$username'");

                            if (mysqli_fetch_assoc($result)) {
                                echo"username sudah digunakan";
                            } else {

                                    $sql = "INSERT INTO pengguna(nama_lengkap, no_hp, password, tanggal_gabung) VALUES('$username', '$nomor', '$password1', CURRENT_DATE())";

                                    mysqli_query($koneksi, $sql);

                                    header("location: index.php");
                            }
                            
                        }
                    }
                    ?></p>
                    <a href="index.php">sudah punya akun? masuk sini</a>
                    <input type="submit" name="login" value="submit">
                </form>
            </div>
        </div>
        <div class="img">
            <span>
                <h1>Halo Petani</h1>
                <p>solusi untuk keluhan para petani di indonesia<br></p>
            </span>
        </div>
    </div>
</body>

</html>