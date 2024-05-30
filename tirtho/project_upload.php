<?php 
require_once("config.php");

if(isset($_POST['upload_submit'])) {
    // Check if file is uploaded
    if(isset($_FILES["image"])) {
        $name = mysqli_real_escape_string($db, $_POST['name']);
        $description = mysqli_real_escape_string($db, $_POST['description']);
        $link = mysqli_real_escape_string($db, $_POST['link']);

        // File upload handling
        $target_dir = "uploads/";
        $target_file = $target_dir . basename($_FILES["image"]["name"]);
        $uploadOk = 1;
        $imageFileType = strtolower(pathinfo($target_file, PATHINFO_EXTENSION));

        // Check if image file is a actual image or fake image
        $check = getimagesize($_FILES["image"]["tmp_name"]);
        if($check !== false) {
            $uploadOk = 1;
        } else {
            echo '<div class="message">File is not an image.</div>';
            $uploadOk = 0;
        }

        // Check file size
        if ($_FILES["image"]["size"] > 500000) {
            echo '<div class="message">Sorry, your file is too large.</div>';
            $uploadOk = 0;
        }

        // Allow certain file formats
        if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
        && $imageFileType != "gif" ) {
            echo '<div class="message">Sorry, only JPG, JPEG, PNG & GIF files are allowed.</div>';
            $uploadOk = 0;
        }

        // Check if $uploadOk is set to 0 by an error
        if ($uploadOk == 0) {
            echo '<div class="message">Sorry, your file was not uploaded.</div>';
        } else {
            // if everything is ok, try to upload file
            if (move_uploaded_file($_FILES["image"]["tmp_name"], $target_file)) {
                // Insert project details into the database
                $insert_query = "INSERT INTO project (name, image, description, link) VALUES ('$name', '$target_file', '$description', '$link')";
                if(mysqli_query($db, $insert_query)) {
                    header("location: project.php?action=uploaded");
                    exit;
                } else {
                    echo '<div class="message">Error uploading project.</div>';
                }
            } else {
                echo '<div class="message">Sorry, there was an error uploading your file.</div>';
            }
        }
    } else {
        echo '<div class="message">No file uploaded.</div>';
    }
}
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="style.css">
    <title>Upload Project</title>
</head>
<body>
    <div class="container_display">
        <h2>Upload Project</h2>
        <form action="" method="POST" enctype="multipart/form-data">
            <label>Name</label>
            <input type="text" name="name" class="form-control" required>
            <label>Description</label>
            <textarea name="description" class="form-control" required></textarea>
            <label>Link</label>
            <input type="text" name="link" class="form-control" required>
            <label>Image</label>
            <input type="file" name="image" class="form-control">
            <button type="submit" name="upload_submit" class="btn-primary">Upload</button>
        </form>
    </div>
</body>
</html>
