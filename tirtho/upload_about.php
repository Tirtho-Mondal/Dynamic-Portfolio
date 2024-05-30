<?php require_once("config.php"); ?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="style.css">
    <title>Image Upload in PHP and MYSQL database</title>
    <style>
        /* Your CSS styles here */
    </style>
</head>
<body>
<?php
if(isset($_POST['form_submit']))
{
    $title=$_POST['title'];
    $emails=$_POST['emails']; // Corrected name attribute for the "Emails" input field
    $folder = "uploads/";
    $image_file=$_FILES['image']['name'];
    $file = $_FILES['image']['tmp_name'];
    $target_file=$folder . basename($image_file);
    $imageFileType=pathinfo($target_file, PATHINFO_EXTENSION);

    // Allow only JPG, JPEG, PNG & GIF etc formats
    if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg" && $imageFileType != "gif" ) {
        $error[] = 'Sorry, only JPG, JPEG, PNG & GIF files are allowed';
    }

    // Set image upload size
    if ($_FILES["image"]["size"] > 1048576) {
        $error[] = 'Sorry, your image is too large. Upload less than 1 MB KB in size.';
    }

    if(!isset($error))
    {
        // Move image to folder
        if(move_uploaded_file($file, $target_file)) {
            $result = mysqli_query($db, "INSERT INTO about (image, details, emails) VALUES ('$image_file', '$title', '$emails')"); // Corrected name attribute for the "Emails" input field
            if($result)
            {
                // Redirect to project.php after successful upload
                header("Location: project.php");
                exit;
            }
            else
            {
                $error[] = 'Something went wrong';
            }
        }
        else {
            $error[] = 'Error uploading file';
        }
    }
}
if(isset($error)){
    foreach ($error as $err) {
        echo '<div class="message">'.$err.'</div>';
    }
}
?>
<div class="container">
    <form action="" method="POST" enctype="multipart/form-data">
        <label>Image</label>
        <input type="file" name="image" class="form-control" required>
        <label>Details</label>
        <input type="text" name="title" class="form-control" required>
        <label>Emails</label>
        <input type="text" name="emails" class="form-control" required> <!-- Corrected name attribute for the "Emails" input field -->

        <button name="form_submit" class="btn-primary">Upload</button>
    </form>
</div>
</body>
</html>
