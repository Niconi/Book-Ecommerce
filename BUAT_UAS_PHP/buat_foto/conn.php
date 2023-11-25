<?php
$servername = "localhost";
$database = "bookoeme_wp377";
$username = "bookoeme_rhei";
$password = "}uYx%h7qVpC7";

// membuat koneksi
$conn = mysqli_connect($servername, $username, $password, $database);
mysqli_select_db($conn, $database) or die("Database belum siap");

// mengecek koneksi
if (!$conn) {
    
    die("Koneksi gagal: " . mysqli_connect_error());
}


// define("DB_HOST", "localhost");
// define("DB_USER", "bookoeme_rhei");
// define("DB_PASSWORD", "}uYx%h7qVpC7");
// define("DB_DATABASE", "bookoeme_wp377");
?>


