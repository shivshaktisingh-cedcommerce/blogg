<?php
session_start();
include "connection.php";
 $query ="SELECT * FROM `POST`";
 $result=mysqli_query($conn,$query);
  foreach($result as $row){
      echo '<p></p>
            <span style="margin-left:3%;margin-top:3%;">'.$row['name'].'</span><span> Published At'.$row['published_at'].'</span>
            <div class="display_blog_sql" >
            <div class="display_content_sql">'.$row['content'].'</div>
            <div class="content_image_sql"><img src='.$row['image'].' class="img_blog_sql" ></div>
            </div';
  }
?>
