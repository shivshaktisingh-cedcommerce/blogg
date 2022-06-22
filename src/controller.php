<?php
session_start();

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

   $query="INSERT INTO `Users`(`name`, `email`, `contact`, `tagline`, `password`, `date_of_joining`, `image`) VALUES ('$user_name','$user_email','$user_contact','$tag_line','$password',NOW(),'$imgname')";
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
    if($count == 1) {
      header("Location:index.php"); 
      $_SESSION['name']= $row['name'];
      $_SESSION['userid']= $row['user_id'];
    }
    else{
      header("Location:login.php");
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
   $imgname= $folder.$img_name;
   move_uploaded_file($tmp_img_name,$folder.$img_name);
   $status_by_admin='Pending';
   $query="INSERT INTO `POST`( `user_id`, `status`, `content`, `image`, `published_at`,  `blog_title`,`status_by_admin`) VALUES ('$id','$blogtype','$blogcontent','$imgname',NOW(),'$blogtitle','$status_by_admin')";
   $result=mysqli_query($conn,$query);
   header("Location:afterwrite.php");

 }

?>