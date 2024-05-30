<?php 
require_once("config.php"); 

if(isset($_GET['id'])) {
    $id = $_GET['id'];
    // Fetch the item to be edited
    $result = mysqli_query($db, "SELECT * FROM about WHERE id=$id");
    $row = mysqli_fetch_assoc($result);

    // Handle form submission for editing
    if(isset($_POST['update_submit'])) {
        $details = $_POST['details'];
        $emails = $_POST['emails'];
        
        // Image handling
        $target_dir = "";
        $target_file = $target_dir . basename($_FILES["image"]["name"]);
        $uploadOk = 1;
        $imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
        
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
        // if everything is ok, try to upload file
        } else {
            if (move_uploaded_file($_FILES["image"]["tmp_name"], $target_file)) {
                // Update the item with image
                $update_query = "UPDATE about SET details='$details', emails='$emails', image='$target_file' WHERE id=$id";
                if(mysqli_query($db, $update_query)) {
                    header("location: about.php?action=updated");
                    exit;
                } else {
                    echo '<div class="message">Error updating item.</div>';
                }
            } else {
                echo '<div class="message">Sorry, there was an error uploading your file.</div>';
            }
        }
    }
}
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="style.css">
    <title>Edit Item</title>
</head>
<body>
    <div class="container">
        <h2>Edit Item</h2>
        <form action="" method="POST" enctype="multipart/form-data">
            <label>Details</label>
            <input type="text" name="details" class="form-control" value="<?php echo $row['details']; ?>" required>
            <label>Emails</label>
            <input type="text" name="emails" class="form-control" value="<?php echo $row['emails']; ?>" required>
            <label>Current Image</label><br>
            <?php if(!empty($row['image'])): ?>
                <img src="<?php echo 'uploads/'.$row['image']; ?>" alt="Current Image" style="max-width: 200px;"/><br><br>
            <?php else: ?>
                <p>No image available</p>
            <?php endif; ?>
            <label>New Image</label>
            <input type="file" name="image" class="form-control">
            <button type="submit" name="update_submit" class="btn-primary">Update</button>
        </form>
    </div>
</body>
</html>