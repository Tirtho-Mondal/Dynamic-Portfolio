<?php 
   session_start(); // Start or resume a session

   // Set a cookie to remember the user's email 
   if(isset($_POST['submit'])) {
       $email = $_POST['email'];
       setcookie("remember_email", $email, time() + (86400 * 1), "/"); 
   }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style/style.css">
    <title>Login</title>
</head>
<body>
<div class="container">
    <div class="box form-box">
        <?php 
        include("php/config.php");
        if(isset($_POST['submit'])){
            $email = mysqli_real_escape_string($con,$_POST['email']);
            $password = mysqli_real_escape_string($con,$_POST['password']);

            $result = mysqli_query($con,"SELECT * FROM users WHERE Email='$email' AND Password='$password' ") or die("Select Error");
            $row = mysqli_fetch_assoc($result);

            if($row){
                $_SESSION['valid'] = $row['Email'];
                $_SESSION['username'] = $row['Username'];
                $_SESSION['age'] = $row['Age'];
                $_SESSION['id'] = $row['id']; 
                header("Location: home.php");
                exit(); // Ensure that script execution stops after redirecting
            } else {
                echo "<div class='message'>
                          <p>Wrong Username or Password</p>
                      </div> <br>";
                echo "<a href='index.php'><button class='btn'>Go Back</button>";
            }
        }
        ?>
        <header>Login</header>
        <form action="" method="post">
            <div class="field input">
                <label for="email">Email</label>
                <!-- Populate email input with remembered email from cookie if available -->
                <input type="text" name="email" id="email" autocomplete="off" required value="<?php echo isset($_COOKIE['remember_email']) ? $_COOKIE['remember_email'] : ''; ?>">
            </div>

            <div class="field input">
                <label for="password">Password</label>
                <input type="password" name="password" id="password" autocomplete="off" required>
            </div>

            <div class="field">
                <input type="submit" class="btn" name="submit" value="Login">
            </div>
        </form>
    </div>
</div>
</body>
</html>
