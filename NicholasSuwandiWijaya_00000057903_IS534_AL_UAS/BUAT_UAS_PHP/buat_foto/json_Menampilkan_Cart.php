<?php
header('Content-type:application/json;charset=utf-8');
include 'conn.php';

//$conn = new mysqli($server, $user, $password, $database);

//$_POST['id_user'] = '106';

$id_user = $_POST['id_user'];

$select="SELECT c.qty, c.id_cart, b.*
from cart c
inner join book b on c.book_id = b.id WHERE c.user_id LIKE '$id_user'";

$result=mysqli_query($conn,$select);
$rows=array();
$folder_name="BUAT_UAS/buat_foto/";
$image_folder="photo";
$web_url="https://www.bookoemen.my.id/";
$target= "$web_url/$folder_name/$image_folder";

while($row=mysqli_fetch_assoc($result)){
    array_push($rows,array(
        'id'=>$row['id'],
        'name'=>$row['name'],
        'author'=>$row['author'],
        'price'=>$row['price'],
        'description'=>$row['description'],
        'image'=>"$target/".$row['image'],
        'total_pages'=>$row['total_pages'],
        'published_at'=>$row['published_at'],
        'isbn'=>$row['isbn'],
        'rating'=>$row['rating'],
        'qty'=>$row['qty'],
        'id_cart'=>$row['id_cart']
        
        )
    );
}
echo json_encode($rows);
mysqli_close($conn)


?>