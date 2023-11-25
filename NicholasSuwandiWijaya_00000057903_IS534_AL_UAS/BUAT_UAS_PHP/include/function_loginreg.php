<?php

class function_loginreg {

    private $conn;

    // constructor
    function __construct() {
        // mengkoneksi ke file lain
        require_once 'connect_db.php';

        // connecting to database
        // mengkoneksikan ke
        $db = new connect_db();
        $this->conn = $db->connect();
    }

    // destructor
    function __destruct() {

    }

    /**
     * Storing new user
     * returns user details
     * fungsi untuk mendaftarkan user
     */
    public function storeUser($name, $email, $password, $nohp) {
       // $uuid = uniqid('', true);
        $hash = $this->hashSSHA($password);
        $encrypted_password = $hash["encrypted"]; // encrypted password
        $salt = $hash["salt"]; // salt untuk menggadakan keamanan
        
        $tgl  = date("Y-m-d");
        $jam  = date("H");
        $jamok = $jam + 7;  //menyesuaikan zona waktu. jikalau tidak, bisa disetting di mysql
        $waktu = date("i:s");
        
        $date = $tgl." ".$jamok.":".$waktu;

        //perintah memsaukkan ke table users dan row
        $stmt = $this->conn->prepare("INSERT INTO user(namee, email, passwordw, salt, created_at, nohp) VALUES(?, ?, ?, ?, ?, ?)");

        //isi data dari variabel yang akan dimasukkan ke database
        // varibel -> ke symbol 's' -> ke symbol '?' (banyak symbol 's' sesuai dengan banyak variabel dan symbol '?')
        $stmt->bind_param("ssssss", $name, $email, $encrypted_password, $salt, $date, $nohp);

        $result = $stmt->execute();
        $stmt->close();

        // check for successful store
        // memriksa apakah berhasil didaftarkan
        if ($result) {
            $stmt = $this->conn->prepare("SELECT * FROM user WHERE email = ?");
            $stmt->bind_param("s", $email);
            $stmt->execute();
            $user = $stmt->get_result()->fetch_assoc();

            $stmt->close();

            return $user; 
        } else {
            return false;
        }
    }
    
    
      public function addto_cart($user_id, $book_id, $qty, $price){

        // $tgl  = date("Y-m-d");
        // $jam  = date("H");
        // $jamok = $jam + 7;  //menyesuaikan zona waktu. jikalau tidak, bisa disetting di mysql
        // $waktu = date("i:s");
        
        // $date = $tgl." ".$jamok.":".$waktu;

        //perintah memsaukkan ke table users dan row
        $stmt = $this->conn->prepare("INSERT INTO cart(user_id, book_id, qty, price) VALUES(?, ?, ?, ?)");

        //isi data dari variabel yang akan dimasukkan ke database
        // varibel -> ke symbol 's' -> ke symbol '?' (banyak symbol 's' sesuai dengan banyak variabel dan symbol '?')
        $stmt->bind_param("ssss", $user_id, $book_id, $qty, $price);

        $result = $stmt->execute();
        $stmt->close();

        // check for successful store
        // memriksa apakah berhasil didaftarkan
        if ($result) {
            $stmt = $this->conn->prepare("SELECT * FROM cart WHERE book_id = ?");
            $stmt->bind_param("s", $book_id);
            $stmt->execute();
            $user = $stmt->get_result()->fetch_assoc();

            $stmt->close();

            return $user; 
        } else {
            return false;
        }
    }
    
    //upload book_id, id_user, id_cart, qty (TOTAL), total_price, Address.
    public function addto_to_transaction_item($book_id, $id_user, $id_cart, $qty, $total_price, $Address){

        // $tgl  = date("Y-m-d");
        // $jam  = date("H");
        // $jamok = $jam + 7;  //menyesuaikan zona waktu. jikalau tidak, bisa disetting di mysql
        // $waktu = date("i:s");
        
        // $date = $tgl." ".$jamok.":".$waktu;

        //perintah memsaukkan ke table users dan row
        $stmt = $this->conn->prepare("INSERT INTO transaction_item(book_id, id_user, id_cart, qty, total_price, Address) VALUES(?, ?, ?, ?, ?, ?)");

        //isi data dari variabel yang akan dimasukkan ke database
        // varibel -> ke symbol 's' -> ke symbol '?' (banyak symbol 's' sesuai dengan banyak variabel dan symbol '?')
        $stmt->bind_param("ssssss", $book_id, $id_user, $id_cart, $qty, $total_price, $Address);

        $result = $stmt->execute();
        $stmt->close();

        // check for successful store
        // memriksa apakah berhasil didaftarkan
        if ($result) {
            $stmt = $this->conn->prepare("SELECT * FROM cart WHERE book_id = ?");
            $stmt->bind_param("s", $book_id);
            $stmt->execute();
            $user = $stmt->get_result()->fetch_assoc();

            $stmt->close();

            return $user; 
        } else {
            return false;
        }
    }
    



    /**
     * Get user by email and password
     * Mengambil data email dan password untuk keperluan autentiksi
     */
    public function getUserByEmailAndPassword($email, $password) {
        // memanggil data yang sesuai dengan email atau email 
        $stmt = $this->conn->prepare("SELECT * FROM user WHERE email = ?");


        $stmt->bind_param("s", $email);

        if ($stmt->execute()){ 
            //menyiapkan data yg diambil, fetch data
            $user = $stmt->get_result()->fetch_assoc();         
            $stmt->close();                                     
                                                              
            // verifying user password                                  
            // ferifikasi kecocokan password                            
            $salt = $user['salt'];                              
            $encrypted_password = $user['passwordw'];  
            $hash = $this->checkhashSSHA($salt, $password);     
                                                                      
            // check for password equality                              
            // jika password sesuai dengan database                     
            if ($encrypted_password == $hash) {                 
                // user authentication details are correct              
                // maka dapat diambil dari database         
                return $user;
            }
        } else {
            return NULL;
        }
    }


     /**
     * Get user by NAME and password
     * Mengambil data NAME dan password untuk keperluan autentiksi
     */
    public function getUserByNameAndEmail($nama, $password){

        // memanggil data yang sesuai dengan NAMA
        $stmt = $this->conn->prepare("SELECT * FROM user WHERE namee = ?");

        $stmt->bind_param("s", $nama);

        if ($stmt->execute()){ 
            //menyiapkan data yg diambil, fetch data
            $user = $stmt->get_result()->fetch_assoc();         
            $stmt->close();                                     
                                                              
            // verifying user password                                  
            // ferifikasi kecocokan password                            
            $salt = $user['salt'];                              
            $encrypted_password = $user['passwordw'];  
            $hash = $this->checkhashSSHA($salt, $password);     
                                                                      
            // check for password equality                              
            // jika password sesuai dengan database                     
            if ($encrypted_password == $hash) {                 
                // user authentication details are correct              
                // maka dapat diambil dari database         
                return $user;
            }
        } else {
            return NULL;
        }

    }

    /**
     * Check user is existed or not
     * fungsi untuk memeriksa user sudah terdaftar atau belum
     */
    public function isUserExisted($email) {
        $stmt = $this->conn->prepare("SELECT email from user WHERE email = ?");

        $stmt->bind_param("s", $email);

        $stmt->execute();

        $stmt->store_result();

        if ($stmt->num_rows > 0) {
            // user existed
            // jika user sudah terdaftar maka data yg dikembalikan true
            $stmt->close();
            return true;
        } else {
            // user not existed
            // jika user belum terdaftar maka data yg dikembalikan false
            $stmt->close();
            return false;
        }
    }

    /**
     * Encrypting password
     * @param password
     * returns salt and encrypted password
     * tambahan keamanan enkripsi password
     */
    public function hashSSHA($password) {

        $salt = sha1(rand());
        $salt = substr($salt, 0, 10);
        $encrypted = base64_encode(sha1($password . $salt, true) . $salt);
        $hash = array("salt" => $salt, "encrypted" => $encrypted);
        return $hash;
    }

    /**
     * Decrypting password
     * @param salt, password
     * returns hash string
     * fungsi untuk memeriksa enkripsi pada saat login
     */
    public function checkhashSSHA($salt, $password) {

        $hash = base64_encode(sha1($password . $salt, true) . $salt);

        return $hash;
    }

}

?>