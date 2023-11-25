<?php
header('Content-type:application/json;charset=utf-8');
include "conn.php";

require_once 'include/function_loginreg.php';
$db = new function_loginreg();

// //pemaksaan
// $_POST['id_cart'] = '2';
// $_POST['id_book'] = '1124';


// $_POST['user_id'] = '101';

// $_POST['qty'] = '9';
// $_POST['price'] = '3.00';

if (isset($_POST['id_cart']) && isset($_POST['id_book']) ) {

    $id = $_POST['id_cart'];
    $bookid = $_POST['book_id'];
    
    
    // $userid = $_POST['user_id'];
   
    // $qty = $_POST['qty'];
    //$price = $_POST['price'];

//$conn,"DELETE FROM mahasiswa WHERE id='$id'"

        $q = mysqli_query($conn, "DELETE FROM cart WHERE id_cart='$id'");

        $response = array();

        if ($q) {
            $response["success"] = 1;
            $response["message"] = "Data berhasil didelet";
            echo json_encode($response);
        } else {
            $response["success"] = 0;
            $response["message"] = "data gagal diupdate";
            echo json_encode($response);
        }
    }
else {
    $response["success"] = -1;
    $response["message"] = "Data kosong";
    echo json_encode($response);
}