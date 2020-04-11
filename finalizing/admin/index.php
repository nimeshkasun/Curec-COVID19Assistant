<!DOCTYPE html>
<html lang="en">
<?php
    include 'logincheck.php';
?>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Curec | Admin's Dashboard Login</title>
    <link href="../doctor/system/images/favicon.svg" rel="shortcut icon"/>
    <link rel="stylesheet" type="text/css" href="index.css">.
</head>

<body>
    <div class="login">
        <h1>Login</h1>
        <form method="POST" action="validate.php">
            <input type="text" name="email" placeholder="Email" required="required" />
            <input type="password" name="pw" placeholder="Password" required="required" />
            <button type="submit" name="logIn" class="btn btn-primary btn-block btn-large">Let me in.</button>
        </form>
    </div>
</body>

</html>