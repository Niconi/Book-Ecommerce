<?php

header('Content-type:application/json;charset=utf-8');

// $_POST['name'] = 'asiong';
//$_POST['email'] = 'a1aaa0GsGdfontol@gmail.com';
// $_POST['password'] = '@agusTampan123s';
//$_POST['nohp'] = '0811810293fg939';

// membuat koneksi ke file lain untuk beberapa perintah lain
require_once 'include/function_loginreg.php';
$db = new function_loginreg();

if (empty($_POST['name'])  && isset($_POST['email']) && isset($_POST['password'])) {

    // receiving the post params
    // menangkap data yang dikirimkan sebelumnya -> POST
    $email = $_POST['email'];
    $password = $_POST['password'];

    // get the user by email and password
    // menangkap data yang dikirimkan sebelumnya -> POST
    $user = $db->getUserByEmailAndPassword($email, $password);

    if ($user != FALSE) {
        // use is found
        // jika user telah ditemukan dan cocok pada database, maka akan dimunculkan data user
        
        $response["success"] = 1;
        $response["message"] = "Login matched. Welcome back ".$user["namee"]. " !! ";

// "This email " . $email . " is already registered ! , Try another one" ;



        // buat masukin variable biar bisa di panggil
        $response["namee"] = $user["namee"];
        $response["email"] = $user["email"];
        $response["nohp"] = $user["nohp"];
        
        $response["id_user123"] = $user["id"];


        $response["user"]["namee"] = $user["namee"];
        $response["user"]["email"] = $user["email"];
        $response["user"]["created_at"] = $user["created_at"];
        $response["user"]["updated_at"] = $user["updated_at"];

        // ditampilkan dalam bentuk json 
        echo json_encode($response);
    } else {
        // user is not found with the credentials
        // jika user tidak ditemukan maka akan muncul pesan 
        $response["success"] = -1;
        $response["message"] = "Login not matched. Please try again!";
        echo json_encode($response);
    }
} 
    else if (empty($_POST['email']) && isset($_POST['name']) && isset($_POST['password'])){

        $name = $_POST['name'];
        $password = $_POST['password'];

        $user = $db->getUserByNameAndEmail($name, $password);

    if ($user != FALSE) {
        // use is found
        // jika user telah ditemukan dan cocok pada database, maka akan dimunculkan data user
        $response["success"] = 1;
        $response["message"] = "Login matched. Welcome back ".$user["namee"]. " !! ";

        
        // buat masukin variable biar bisa di panggil
        $response["namee"] = $user["namee"];
        $response["email"] = $user["email"];
        $response["nohp"] = $user["nohp"];
         $response["id_user123"] = $user["id"];

        $response["user"]["namee"] = $user["namee"];
        $response["user"]["email"] = $user["email"];
        $response["user"]["created_at"] = $user["created_at"];
        $response["user"]["updated_at"] = $user["updated_at"];

        // ditampilkan dalam bentuk json 
        echo json_encode($response);
    } else {
        // user is not found with the credentials
        // jika user tidak ditemukan maka akan muncul pesan 
        $response["success"] = -1;
        $response["message"] = "Login not matched. Please try again!";
        echo json_encode($response);
    }

}


else {
    // required post params is missing
    // jika tidak ada inputan untuk login
    $response["success"] = -2;
    $response["message"] = "Required parameters email or password is missing!";
    echo json_encode($response);
}

?>