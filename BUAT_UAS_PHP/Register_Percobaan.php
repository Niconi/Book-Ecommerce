<?php
   header('Content-type:application/json;charset=utf-8');

    //  $_POST['name'] = 'asiong';
    //  $_POST['email'] = 'a1aaa0GsGdontol@gmail.com';
    //  $_POST['password'] = '@agusTampan123s';
    //  $_POST['nohp'] = '0811810293fg939';

// membuat koneksi ke file lain untuk beberapa perintah lain
require_once 'include/function_loginreg.php';
$db = new function_loginreg();

// json response array
// memeriksa respon json
$response = array("success" => 0); //false

if (isset($_POST['email']) && isset($_POST['password'])) {

    // receiving the post params
    // menangkap data yang dikirimkan sebelumnya -> POST
    $name = $_POST['name'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    $nohp      = ($_POST['nohp']);


    // check if user is already existed with the same email
    // memeriksa apakah user telah terdaftar sebelumnya
    if ($db->isUserExisted($email)) {
        // user already existed
        // jika user telah terdaftar
    
        $response["success"] = -1;//TRUE
        //$response["message"] = "This email " . $email . " is already registered ! , Try another one" ;
        $response["message"] = "This email is already registered ! , Try another one" ;
        echo json_encode($response);
    } else {
        // create a new user
        // jika user belum terdaftar maka membuat user baru
        $user = $db->storeUser($name, $email, $password, $nohp);
        if ($user) {
            // user stored successfully
            // jika sukses, maka akan ditampilkan hasil pendaftaran
            $response["success"] = 1;//FALSE

            $response["message"] = "Your account has been created!";
            //$response["uid"] = $user["unique_id"];
        
        //memberikan data ke sqlite!
            $response["created_att"] = $user["created_at"];
             
            $response["user"]["namee"] = $user["namee"];
            $response["user"]["email"] = $user["email"];
            $response["user"]["nohp"] = $user["nohp"];
            $response["user"]["created_at"] = $user["created_at"];
            $response["user"]["updated_at"] = $user["updated_at"];
            //ditampilkan dalam bentuk json
            echo json_encode($response);
        } else {
            // user failed to store
            // jika gagal didaftarkan
            $response["success"] = -2; //TRUE
            $response["message"] = "Error in registration!";
            echo json_encode($response);
        }
    }
} else {
    // jika ada kesalan dalam pendaftaran
    $response["success"] = -3;//TRUE
    $response["message"] = "Parameters is missing!";
    echo json_encode($response);
}
?>