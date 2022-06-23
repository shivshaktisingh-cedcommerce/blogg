<?php
session_start();
include "connection.php";
 $query ="SELECT * FROM `POST`";
 $result=mysqli_query($conn,$query);
  foreach($result as $row){
    $query1="SELECT name,image FROM Users where user_id=".$row['user_id']."";
    $result1=mysqli_query($conn,$query1);
    $row1=mysqli_fetch_assoc($result1);
    $str=substr($row['content'],0,200);
    $str1= "$str..."; ?>
        <div  id="display_blog_msin_div">
     <?php echo '<p style="margin-top:5vw;"></p>
            <a href="blogger_post.php?action=onlybloggerpost&id='.$row['user_id'].'"><img src='.$row1['image'].' id="image_of_blogger"><span id="name_of_blogger" >'.$row1['name'].'</span></a><span id="id_of_publishing_time"> Published At: '.$row['published_at'].'</span>
            <a href="detailaboutblog.php?action1=detail&id='.$row['post_id'].'&name='.$row1['name'].'"
            <div class="display_blog_sql"  >
            <div id="id_of_blog_content" class="display_content_sql"><p id="id_of_blog_title">'.$row['blog_title'].'</p>'.$str1.'</div>
            <div class="content_image_sql"><img src='.$row['image'].' class="img_blog_sql" ></div>
            </div></a>';

          } ?>
          </div>
