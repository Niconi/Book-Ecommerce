<?php
   header('Content-type:application/json;charset=utf-8');

    // $_POST['book_id'] = '1124';
    // $_POST['user_id'] = '60';
    // $_POST['cart_id'] = '75';
    // $_POST['qty'] = '2';
    // $_POST['total_price'] = '6.00';
    // $_POST['address'] = 'jkt';

//upload book_id, id_user, id_cart, qty (TOTAL), total_price, Address.

// membuat koneksi ke file lain untuk beberapa perintah lain
require_once 'include/function_loginreg.php';
$db = new function_loginreg();

// json response array  
// memeriksa respon json
$response = array("success" => 0); //false

if (isset($_POST['user_id']) && isset($_POST['book_id'])) {

    $bookid = $_POST['book_id'];
    $userid = $_POST['user_id'];
    $cartid = $_POST['cart_id'];

    $qty      = ($_POST['qty']);

    $total_price    = ($_POST['total_price']);

    $Address    = ($_POST['address']);


        $user = $db->addto_to_transaction_item($bookid, $userid, $cartid, $qty, $total_price, $Address);
        if ($user) {

            $response["success"] = 1;//FALSE

            $response["message"] = "Your items has add to transaction!";

            $response["user"]["book_id"] = $user["book_id"];
     

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