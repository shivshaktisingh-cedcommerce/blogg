<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Logiin page</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/utils.css">
</head>
<body bgcolor="#800000">
    <div style="background-color:white;"><?php include "header.php" ?></div>
    <div class="login-div">
        <div class="login-logo"><center><p id="log-logo-content">Imperfect<br> rhythm</p></center></div>
        <div class="authentication">
            <div class="inner-authentication">
            <center>
                <span style="font-size:2vw;color:brown;"><b>Login</b></span><br>
                <form method="POST" action="userloginsql.php">
                <input type="text" class="form-input form-gap" placeholder="Email"><br>
                <input type="text" class="form-input form-gap" placeholder="Password"><br>
                <input type="submit" class="btnlogin" value="Login">
                <a href="register.php"><input type="button" class="btnregister" value="Register"></a>
                </form>
            </center>
            </div>
        </div>
    </div>
</body>
</html>