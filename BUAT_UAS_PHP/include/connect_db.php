<?php


// $server = "localhost";
// $user = "root";
// $password = "";
// $database = "dbbuku";

// $connect = mysqli_connect($server, $user, $password) or die("koneksi gagal!");
// mysqli_select_db($connect, $database) or die("Database belum siap");


class connect_db {
    private $conn;

    // Connecting to database
    // Koneksi kedatabase
    public function connect()
    {
         require_once 'database.php';
        /**
         * Database config variables
         */
        //define("DB_HOST", "localhost");
        //define("DB_USER", "root");
       // define("DB_PASSWORD", "");
       // define("DB_DATABASE", "dbbuku");
        
        // Connecting to mysql databas
        // Koneksi ke database MySQL
        $this->conn = new mysqli(DB_HOST, DB_USER, DB_PASSWORD, DB_DATABASE);

        // return database handler
        return $this->conn;

       
    }
}


?>