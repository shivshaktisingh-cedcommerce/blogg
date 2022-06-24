<?php
session_start();
$_SESSION['edit']="";

if(isset($_POST['submit-register']))
  { 
   include "connection.php";
   $user_name=$_POST['user'];
   $user_email=$_POST['email'];
   $user_contact=$_POST['contact'];
   $tag_line=$_POST['tagline'];
   $password = $_POST['password'];
   $name=$_POST['user'];
   $img_name = $_FILES['img_upload']['name'];
   $tmp_img_name = $_FILES['img_upload']['tmp_name'];
   $folder='upload/';
   $imgname= $folder.$img_name;
   move_uploaded_file($tmp_img_name,$folder.$img_name);
   $role = 'user';
   $query="INSERT INTO `Users`(`name`, `email`, `contact`, `tagline`, `password`, `date_of_joining`, `image`,`role`) VALUES ('$user_name','$user_email','$user_contact','$tag_line','$password',NOW(),'$imgname','$role')";
   $result=mysqli_query($conn,$query);
   header("Location:login.php");
}


if(isset($_POST['login_button']))
 { 
   include "connection.php";     
   $email= $_POST['email'];
   $password=$_POST['password'];
   $query = "SELECT * FROM Users WHERE email = '$email' and password = '$password'";
   $result = mysqli_query($conn,$query);
   $count = mysqli_num_rows($result);
   $row = mysqli_fetch_assoc($result);
    if($count == 1 AND $row['role']=='user') {
      header("Location:index.php"); 
      $_SESSION['name']= $row['name'];
      $_SESSION['userid']= $row['user_id'];
    }
    else if($count == 1 AND $row['role']=='admin'){
      header("Location:adminpanel.php");
      $_SESSION['admin']= $row['name'];
    }

 }
 if(isset($_POST['submit-write-public'])){
  
   include "connection.php";
   $id=$_SESSION['userid'];
   $blogtitle=$_POST['blogtitle'];
   $blogtype=$_POST['blogtype'];
   $blogcontent=$_POST['blogcontent'];
   $img_name = $_FILES['img_upload']['name'];
   $tmp_img_name = $_FILES['img_upload']['tmp_name'];
   $folder='upload/';
   move_uploaded_file($tmp_img_name,$folder.$img_name);
   $image= $folder.$img_name;

   $status_by_admin='Pending';
   $query="INSERT INTO `POST`( `user_id`, `status`, `content`, `image`, `published_at`,  `blog_title`,`status_by_admin`) VALUES ('$id','$blogtype','$blogcontent','$image',NOW(),'$blogtitle','$status_by_admin')";
   $result=mysqli_query($conn,$query);
   header("Location:afterwrite.php");

 }
 if(isset($_POST['edittitle'])){
  $_SESSION['edit']=$_SESSION['name'];
  include "connection.php";
  $post_id=$_POST['post_id'];
  $blogtitle=$_POST['edittitle'];
  $blogtype=$_POST['editstatus'];
  $blogcontent=$_POST['editcontent'];
  $img_name = $_POST['filename'];
  $tmp_img_name = $_FILES['img_upload']['tmp_name'];
  $folder='upload/';
  $imgname= $folder.$img_name;
  move_uploaded_file($tmp_img_name,$folder.$img_name);
  $status_by_admin='Pending';
  if($img_name!=""){
  $query="UPDATE `POST` SET `status`='$blogtype',`content`='$blogcontent',`image`='$imgname',`edited_at`=NOW(),`blog_title`='$blogtitle',`status_by_admin`='$status_by_admin' WHERE post_id='$post_id'";
  $result=mysqli_query($conn,$query);
   }
  

  else{
    $query="UPDATE `POST` SET `status`='$blogtype',`content`='$blogcontent',`edited_at`=NOW(),`blog_title`='$blogtitle',`status_by_admin`='$status_by_admin' WHERE post_id='$post_id'";
    $result=mysqli_query($conn,$query);
  }
   echo 1;

  }


  if(isset($_POST['user_m'])){
    include "connection.php";
    $query = "SELECT * FROM Users where role != 'admin'";
    $result=mysqli_query($conn,$query);
   
    $txt.="<table><thead><th>User Id</th><th>Image</th><th>User Name</th><th>Email</th><th>Contact</th><th>Tagline</th><th>Password</th><th>Date Of Joining</th><th>Role</th><th>Action</th></thead>";
    foreach($result as $row){
      $txt.='<tr><td>'.$row['user_id'].'</td><td><img class="img_user_class" src='.$row['image'].'></td><td>'.$row['name'].'</td><td>'.$row['email'].'</td><td>'.$row['contact'].'</td><td>'.$row['tagline'].'</td><td>'.$row['password'].'</td><td>'.$row['date_of_joining'].'</td><td>'.$row['role'].'</td><td><i class="fa fa-edit edituser"></i><i class="fa fa-trash-o deleteuser"></i></td></tr>';

    }
    $txt.="</table>";
    echo $txt;
  }



  if(isset($_POST['blog_m'])){
    include "connection.php";
    $query = "SELECT * FROM POST";
    $result=mysqli_query($conn,$query);
   
    $txt.="<table id='myTable'><thead><th>Post Id</th><th>User Id</th><th>Status</th><th>Image</th><th>Published At</th><th>Blog Title</th><th>Status By Admin</th><th>Last Edit</th><th>Action</th></thead>";
    foreach($result as $row){
      if($row['status_by_admin']=="Pending"){
      $txt.='<tr><td>'.$row['post_id'].'</td><td>'.$row['user_id'].'</td><td>'.$row['status'].'</td><td><img src='.$row['image'].' class="img_user_class"></td><td>'.$row['published_at'].'</td><td>'.$row['blog_title'].'</td><td><select id='.$row["post_id"].' class="selectdrop" name="status" onchange="changeSelect(this.id,this.value)">
      <option value="Pending">Pending</option>
      <option value="Approved">Approved</option>
      <option value="Delivered">Delivered</option>
    </select></td><td>'.$row['edited_at'].'</td><td><i class="fa fa-edit edituser" style="font-size:2vw;" ></i><i class="fa fa-trash-o deleteuser" style="font-size:2vw;"></i></td></tr>';
      }
      if($row['status_by_admin']=="Approved"){
        $txt.='<tr><td>'.$row['post_id'].'</td><td>'.$row['user_id'].'</td><td>'.$row['status'].'</td><td><img src='.$row['image'].' class="img_user_class"></td><td>'.$row['published_at'].'</td><td>'.$row['blog_title'].'</td><td><select id='.$row["post_id"].' class="selectdrop" name="status" onchange="changeSelect(this.id,this.value)">
        <option value="Approved">Approved</option>
        <option value="Pending">Pending</option>
        <option value="Delivered">Delivered</option>
      </select></td><td>'.$row['edited_at'].'</td><td><i class="fa fa-edit edituser" style="font-size:2vw;"></i><i class="fa fa-trash-o deleteuser" style="font-size:2vw;"></i></td></tr>';
        }
        if($row['status_by_admin']=="Delivered"){
          $txt.='<tr><td>'.$row['post_id'].'</td><td>'.$row['user_id'].'</td><td>'.$row['status'].'</td><td><img src='.$row['image'].' class="img_user_class"></td><td>'.$row['published_at'].'</td><td>'.$row['blog_title'].'</td><td><select id='.$row["post_id"].' class="selectdrop" name="status" onchange="changeSelect(this.id,this.value)">
          <option value="Delivered">Delivered</option>
          <option value="Pending">Pending</option>
          <option value="Approved">Approved</option>
        </select></td><td>'.$row['edited_at'].'</td><td><i class="fa fa-edit edituser" style="font-size:2vw;" ></i><i class="fa fa-trash-o deleteuser" style="font-size:2vw;"></i></td></tr>';
          }
    }
    $txt.="</table>";
  
    echo $txt;
  }


  if(isset($_POST['id'])){
    $select =$_POST['value'];
    $post_id=$_POST['id'];
    include "connection.php";
    $query="UPDATE `POST` SET `status_by_admin`='$select' WHERE post_id='$post_id'";
    $result=mysqli_query($conn,$query);
    
    
    
  }



?>