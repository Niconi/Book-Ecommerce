<?php
header('Content-type:application/json;charset=utf-8');
include 'conn.php';
$_POST['id_user'] = '110';

$id_user = $_POST['id_user'];
//$select="SELECT * FROM transaction_item where id_user LIKE '$id_user'";

$select="SELECT t.* ,b.*
from transaction_item t
inner join book b on t.book_id = b.id where t.id_user LIKE '$id_user'";

$result=mysqli_query($conn,$select);
$rows=array();

$folder_name="BUAT_UAS/buat_foto/";
$image_folder="photo";
$web_url="https://www.bookoemen.my.id/";
$target= "$web_url/$folder_name/$image_folder";


while($row=mysqli_fetch_assoc($result)){
    array_push($rows,array(
        
        'id'=>$row['id'],
        'book_id'=>$row['book_id'],
        'id_user'=>$row['id_user'],
        'id_cart'=>$row['id_cart'],
        
         'name'=>$row['name'],
          'image'=>"$target/".$row['image'],
         
        'qty'=>$row['qty'],
        'total_price'=>$row['total_price'],
        'Address'=>$row['Address'],
        'status'=>$row['status']
        )
    );
}
echo json_encode($rows);
mysqli_close($conn);


?>