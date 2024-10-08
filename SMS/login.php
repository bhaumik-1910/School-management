<?php

session_start();
include_once 'database.php';

?>


<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Login</title>
  <title>Admin Dashboard</title>
  <link rel="icon" href="../img/logo.png">
  <link rel="stylesheet" href="dist/css/login.css">
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="bower_components/Ionicons/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="plugins/iCheck/square/blue.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  <!-- Google Font -->
  <link rel="stylesheet"
    href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>

<body>
  <div class="container">
    <div class="left">
      <div class="welcome-message">
        <h1>Welcome!</h1>
      </div>
    </div>
    <div class="right">
      <div class="login-box">
        <div class="login-title">
          <h2><b>SMS</b> Login</h2>
        </div>
        <form method="POST">
          <div class="input-box">
            <label for="email">Email:</label>
            <input type="email" id="username" name="email" placeholder="Email" required>
          </div>
          <div class="input-box">
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" placeholder="password" required>
          </div>
          <button type="submit" name="submit" type="submit">Sign in</button>
        </form>

        <?php

        if (isset($_POST['submit'])) {
          $email = $_POST['email'];
          $password = md5($_POST['password']);

          $sql = "SELECT * FROM user WHERE email ='" . $email . "' and password = '" . $password . "' ";
          $result = $conn->query($sql);

          if ($result->num_rows > 0) {
            // output data of each row
            while ($row = $result->fetch_assoc()) {
              $_SESSION['role'] = $row['role'];


              //   $_SESSION['user'] = $row['fname'] . " " . $row['lname'];
        
            }

            $sql2 = "SELECT * FROM " . $_SESSION['role'] . " WHERE email ='" . $email . "'";
            $result2 = $conn->query($sql2);
            if ($result2->num_rows > 0) {
              while ($row2 = $result2->fetch_assoc()) {
                $_SESSION['user'] = $row2['fname'] . " " . $row2['lname'];
                // $_SESSION['uid'] = $row2['pid'];
                if ($_SESSION['role'] == 'Student') {
                  $_SESSION['uid'] = $row2['sid'];
                } else if ($_SESSION['role'] == 'Parent') {
                  $_SESSION['uid'] = $row2['pid'];
                } else if ($_SESSION['role'] == 'Teacher') {
                  $_SESSION['uid'] = $row2['tid'];
                }
              }

            }

            header("Location:./");
          } else {
            echo "<p style='width:100%;text-align;center'>Incorrect username or password</p>";
          }
        }

        ?>


      </div>
    </div>
  </div>

  <!-- Font Awesome CDN Script -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/js/all.min.js"></script>

  <!-- jQuery 3 -->
  <script src="bower_components/jquery/dist/jquery.min.js"></script>
  <!-- Bootstrap 3.3.7 -->
  <script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
  <!-- iCheck -->
  <script src="plugins/iCheck/icheck.min.js"></script>
  <script>
    $(function () {
      $('input').iCheck({
        checkboxClass: 'icheckbox_square-blue',
        radioClass: 'iradio_square-blue',
        increaseArea: '20%' /* optional */
      });
    });
  </script>
</body>

</html>