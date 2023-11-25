<?php
header('Content-type:application/json;charset=utf-8');
$con = mysqli_connect("localhost", "bookoeme_rhei", "}uYx%h7qVpC7", "bookoeme_wp377");

// $_POST['img'] = '639239c4228aae0.jpg';
// $_POST['user_id'] = '123456';
// $_POST['total_harga'] = '12453';

if($con){
    if(!empty($_POST['img'])){
        $path = 'images/' . date("d-m-Y") . '-' . time() . '-' . rand(10000, 10000) . '.jpg';
        
        
        $iduser = ($_POST['user_id']);
        $totharga = ($_POST['total_harga']);
        
        if(file_put_contents($path,base64_decode($_POST['img']))){
        $sql = "INSERT INTO payment VALUES('','','$iduser', '$totharga','".$path."')";
        
            if(mysqli_query($con,$sql)){
                
                $response["success"] = 1;
                echo json_encode($response);
            }
            else echo 'Failed to insert to Database';
        }else echo 'Failed to upload image';
    }else echo 'No image Found';    
}
else echo "Database connection failed"; 
