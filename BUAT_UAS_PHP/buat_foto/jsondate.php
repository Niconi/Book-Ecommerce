<?php
header('Content-type:application/json;charset=utf-8');
include 'conn.php';

//$conn = new mysqli($server, $user, $password, $database);
$select="SELECT * FROM book ORDER BY published_at DESC LIMIT 10";

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
         'stock'=>$row['stock']
        )
    );
}
echo json_encode($rows);
mysqli_close($conn)


?>