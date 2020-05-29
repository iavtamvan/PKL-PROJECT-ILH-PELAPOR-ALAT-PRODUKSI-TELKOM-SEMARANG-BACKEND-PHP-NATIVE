<?php

$server = "localhost";
$user = "root";
//$password = "Ind0n3s14r4y4";
$password = "1234567890";
$nama_database = "pelaporan_alpro";

$db = mysqli_connect($server, $user, $password, $nama_database);

if( !$db ){
    die("Gagal terhubung dengan database: " . mysqli_connect_error());
}

?>
