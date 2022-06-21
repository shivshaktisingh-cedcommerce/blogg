<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/utils.css">
</head>
<body>
    <?php
if(isset($_POST['submit']))
  { 
   $name=$_POST['user'];
   $img_name = $_FILES['img_upload']['name'];
   $tmp_img_name = $_FILES['img_upload']['tmp_name'];
   $folder='upload/';
   echo $name;
   echo "<br>";
   echo $folder.$img_name;
   move_uploaded_file($tmp_img_name,$folder.$img_name);
   
}
?>

<div class="registernav"><?php include "header.php"; ?></div>
  <div class="register-content">
  <center>
    <p id="heading-before-register-table">We are <span class="wave" >&#128515;</span> you are joining us.</p>
    <div class="user-registration">
        <form method="POST" action="" enctype="multipart/form-data">
        <table class="registration-table">
            
            <tr><td class="first-td-table">Name</td><td class="second-td-table"><input type="text" name="user" class="form-input"></td></tr>
            <tr><td class="first-td-table">Email</td><td class="second-td-table"><input type="email" class="form-input"></td></tr>
            <tr><td class="first-td-table">Contact</td><td class="second-td-table"><input type="number" class="form-input"></td></tr>
            <tr><td class="first-td-table">Tag line</td><td class="second-td-table"><input type="text" class="form-input"></td></tr>
            <tr><td class="first-td-table">Upload Image</td><td class="second-td-table"><input type="file" name="img_upload" class="form-input"></td></tr>
            <tr><td class="first-td-table">Password</td><td class="second-td-table"><input type="text" class="form-input"></td></tr>
            <tr><td class="first-td-table">Confirm Password</td><td class="second-td-table"><input type="text" class="form-input"></td></tr>
        </table>
        <input type="submit" name="submit" class="btn" value="Click to Register">
</form>
    </div>
 <center>
</div>


</body>
</html>