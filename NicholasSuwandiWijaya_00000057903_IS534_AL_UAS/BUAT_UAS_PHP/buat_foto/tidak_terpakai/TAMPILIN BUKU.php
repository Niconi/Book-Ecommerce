<?php 
 
 //database constants
 define('DB_HOST', 'localhost');
 define('DB_USER', 'bookoeme_rhei');
 define('DB_PASS', '}uYx%h7qVpC7');
 define('DB_NAME', 'bookoeme_wp377');

 //connecting to database and getting the connection object
 $conn = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME);
 
 //Checking if any error occured while connecting
 if (mysqli_connect_errno()) {
 echo "Failed to connect to MySQL: " . mysqli_connect_error();
 die();
 }
 


 //creating a query
 $stmt = $conn->prepare("SELECT id, name, author, price, description, image, total_pages, published_at, isbn, created_at FROM book;");
 
 //executing the query 
 $stmt->execute();
 
 //binding results to the query 
 $stmt->bind_result($id, $namee, $author, $price, $descriptionn, $imagee, $total_pages, $published_at, $isbn, $created_at);
 
 $products = array(); 
 
 //traversing through all the result 
 while($stmt->fetch()){
 $temp = array();
 $temp['id'] = $id; 
 $temp['name'] = $namee; 

 $temp['author'] = $author; 
 $temp['price'] = $price; 


 $temp['description'] = $descriptionn; 
 $temp['image'] = $imagee; 

 $temp['total_pages'] = $total_pages; 
 $temp['published_at'] = $published_at; 

 $temp['isbn'] = $isbn; 
 $temp['created_at'] = $created_at; 

 array_push($products, $temp);
 }
 
 //displaying the result in json format 
 echo json_encode($products);