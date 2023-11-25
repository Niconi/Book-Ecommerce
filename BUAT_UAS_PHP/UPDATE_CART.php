<?php
header('Content-type:application/json;charset=utf-8');
include "conn.php";

require_once 'include/function_loginreg.php';
$db = new function_loginreg();

//pemaksaan

// $_POST['id_cart'] = '1';
// $_POST['user_id'] = '101';
// $_POST['book_id'] = '1127';
// $_POST['QTY'] = '9'; 

if (isset($_POST['id_cart']) && isset($_POST['book_id'])) {

    $id_cart = $_POST['id_cart'];

    $book_id = $_POST['book_id'];
    $jumlah_buku = $_POST['QTY'];


        $q = mysqli_query($conn, "UPDATE cart SET qty ='$jumlah_buku' WHERE book_id = '$book_id' AND id_cart = '$id_cart' ");

        $response = array();

        if ($q) {
            $response["success"] = 1;
            $response["message"] = "Data berhasil diupdate";
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
