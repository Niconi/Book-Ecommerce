<?php  
 //Database connectivity  
 $servername = "localhost";
$database = "bookoeme_wp377";
$username = "bookoeme_rhei";
$password = "}uYx%h7qVpC7";

// membuat koneksi
$con = mysqli_connect($servername, $username, $password, $database);
mysqli_select_db($con, $database) or die("Database belum siap");

// mengecek koneksi
if (!$con) {

    die("Koneksi gagal: " . mysqli_connect_error());
}


 $sql=mysqli_query($con,"select * from transaction_item");  
 //Get Update id and status  
     if (isset($_GET['id']) && isset($_GET['status'])) {  
      $id=$_GET['id'];  
      $status=$_GET['status'];  
      mysqli_query($con,"update transaction_item set status='$status' where id='$id'");  
      die();  
 }  
 ?>  
 <!DOCTYPE html>  
 <html>  
 <head>  
      <meta charset="utf-8">  
      <meta name="viewport" content="width=device-width, initial-scale=1">  
      <title>Update Status Pembayaran</title>  
      <style type="text/css">  
           *{  
                padding: 0;  
                margin: 0;  
                box-sizing: border-box;  
           }  
           body{  
                background: #ccc;  
                display: flex;  
                justify-content: center;  
           }  
           .container{  
                width: 100%;  
                max-width: 1400px;  
                margin: 10rem auto;  
           }  
           .container table{  
                width: 100%;  
                margin: auto;  
                border-collapse: collapse;  
                font-size: 2rem;  
           }  
           .container table th{  
                background: red;  
                color: #fff;  
           }  
           select{  
                width: 100%;  
                padding: 0.5rem 0;  
                font-size: 1rem;  
           }  
      </style>  
 </head>  
 <body>  
 <div class="container">  
      <table border="1">  
           <tr>  
                <th>No.</th>  
                <th>id transaction</th>  
                <th>book id</th>  
                <th>id user</th>  
                <th>id cart</th>
                <th>quantity</th>
                <th>total price</th>
                <th>address</th>
                <th>Number of Status</th>
                <th>Status</th>
                <th>Change Status</th>

           </tr>  
           <?php  
           $i=1;  
           if (mysqli_num_rows($sql)>0) {  
                 while ($row=mysqli_fetch_assoc($sql)) { ?>  
                 <tr>  
                      <td><?php echo $i++ ?></td>  
                      <td><?php echo $row['id'] ?></td>  
                      <td><?php echo $row['book_id'] ?></td>
                      <td><?php echo $row['id_user'] ?></td>
                      <td><?php echo $row['id_cart'] ?></td>
                      <td><?php echo $row['qty'] ?></td>
                      <td><?php echo $row['total_price'] ?></td>
                      <td><?php echo $row['Address'] ?></td>
                      <td><?php echo $row['status'] ?></td>

                      <td>  
                           <?php  
                           if ($row['status']==1) {  
                                echo "Pending";  
                           }if ($row['status']==2) {  
                                echo "Accept";  
                           }if ($row['status']==3) {  
                                echo "Reject";  
                           }  
                           ?>  
                      </td>  
                      <td>  
                           <select onchange="status_update(this.options[this.selectedIndex].value,'<?php echo $row['id'] ?>')">  
                                <option value="">Update Status</option>  
                                <option value="1">Pending</option>  
                                <option value="2">Accept</option>  
                                <option value="3">Reject</option>  
                           </select>  
                      </td>  
                 </tr>       
           <?php      }  
            } ?>  
      </table>  
 </div>  

 </body>  
 </html>  