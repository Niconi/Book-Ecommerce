<?php
   header('Content-type:application/json;charset=utf-8');

    // $_POST['user_id'] = '111';
    // $_POST['book_id'] = '421';
    // $_POST['qty'] = '1';
    // $_POST['price'] = '1.00';

// membuat koneksi ke file lain untuk beberapa perintah lain
require_once 'include/function_loginreg.php';
$db = new function_loginreg();

// json response array  
// memeriksa respon json
$response = array("success" => 0); //false

if (isset($_POST['user_id']) && isset($_POST['book_id'])) {


    $userid = $_POST['user_id'];
    $bookid = $_POST['book_id'];
    $qty      = ($_POST['qty']);
    $price    = ($_POST['price']);


        $user = $db->addto_cart($userid, $bookid, $qty, $price);
        if ($user) {

            $response["success"] = 1;//FALSE

            $response["message"] = "Your items has add to cart!";
            $response["id_pembelian"] = $user["id"];
            $response["user"]["user_id"] = $user["user_id"];
            $response["user"]["book_id"] = $user["book_id"];
            $response["user"]["qty"] = $user["qty"];
            $response["user"]["price"] = $user["price"];
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
 else {
    // jika ada kesalan dalam pendaftaran
    $response["success"] = -3;//TRUE
    $response["message"] = "Parameters is missing!";
    echo json_encode($response);
}
?>