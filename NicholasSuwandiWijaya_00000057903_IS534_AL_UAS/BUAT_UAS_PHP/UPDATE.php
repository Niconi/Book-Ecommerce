<?php
header('Content-type:application/json;charset=utf-8');
include "conn.php";

require_once 'include/function_loginreg.php';
$db = new function_loginreg();

// //pemaksaan
// $_POST['id'] = '95';
// $_POST['nama'] = 'alexa';
// $_POST['email'] = 'tolalt@gmail.com';
// $_POST['nohp'] = '09888775534';



if (isset($_POST['id']) && isset($_POST['nama']) && isset($_POST['email'])&& isset($_POST['nohp'])) {

    $id = $_POST['id'];
    $nama = $_POST['nama'];
    $email = $_POST['email'];
    $nohp = $_POST['nohp'];


    if ($db->isUserExisted($email)) {
        // user already existed
        // jika user telah terdaftar

        $response["success"] = -1; //TRUE
        //$response["message"] = "This email " . $email . " is already registered ! , Try another one" ;
        $response["message"] = "This email is already registered ! , Try another one";
        echo json_encode($response);

    } else {
        $q = mysqli_query($conn, "UPDATE user SET namee='$nama',
        email='$email', nohp='$nohp' WHERE id='$id'");

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
} else {
    $response["success"] = -2;
    $response["message"] = "Data kosong";
    echo json_encode($response);
}
