<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create your post</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/utils.css">
</head>
<body>
    <div style="background-color:#d2691e"><?php include "header.php"; ?></div>
  <center>  <div class="write-content">
        <form method="POST" action="">
          <input type="text" class="form-input" placeholder="Title"><br>
          <textarea rows="10" cols="80" placeholder="Start writing about your post" class="text-long-content"></textarea><br>
          <input type="file" name="img_upload" class="img-input"><br>
          <input type="submit" class="btn-private" value="Post Now">
          <input type="submit" class="btn-public" value="Post Later">


        </form>
    </div></center>
</body>
</html>