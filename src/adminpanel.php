<?php
session_start();

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="admin.css">
    <link rel="stylesheet" href="css/utils.css">
</head>
<body>
    <div class="admin_header"><center><p>ADMIN PANEL</p></center></div>
    <div class="main_div_panel">
        <div class="side_left_bar">
            <p class="admin_options" id="first">Dash Board</p><br>
            <p class="admin_options">User Management</p><br>
            <p class="admin_options">Blog Management</p><br>
            <p class="admin_options">Admin Setting</p><br>
            <p class="admin_options">Logout</p><br>
            <p class="admin_options">Pending User status</p><br>
            <p class="admin_options">Pending Blog status</p><br>

        </div>
        <div class="side_right_bar">
            <div class="total_no_of_users">
                <?php  
                     include "connection.php";
                     $query1 = "SELECT COUNT(user_id) FROM Users ";
                     $result=mysqli_query($conn,$query1);
                     $count = mysqli_fetch_array($result);
                     $total= $count[0];
                     echo"<p style='margin-top:5vw;margin-left:2vw;font-size:1.5vw;'>Total Users: $total</p>";
                ?>
            </div>
            <div class="total_no_of_post">
            <?php  
                     include "connection.php";
                     $query1 = "SELECT COUNT(post_id) FROM POST ";
                     $result=mysqli_query($conn,$query1);
                     $count = mysqli_fetch_array($result);
                     $total= $count[0];
                     echo"<p style='margin-top:5vw;margin-left:2vw;font-size:1.5vw;'>Total Post: $total</p>";
                ?>
            </div>
            <div class="total_no_of_pending_post">
            <?php  
                     include "connection.php";
                     $query1 = "SELECT COUNT(post_id) FROM POST where status_by_admin='Pending' ";
                     $result=mysqli_query($conn,$query1);
                     $count = mysqli_fetch_array($result);
                     $total= $count[0];
                     echo"<p style='margin-top:5vw;margin-left:2vw;font-size:1.5vw;'>Pending Post: $total</p>";
                ?>
            </div>
           
        </div>
    </div>
    
</body>
</html>