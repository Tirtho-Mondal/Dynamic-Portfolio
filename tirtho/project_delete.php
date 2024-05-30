<?php
require_once("config.php");

// Retrieve the ID from the GET parameters
$id = $_GET['id'];

// Fetch the image file name from the database for the given ID
$res = mysqli_query($db, "SELECT image FROM project WHERE id = $id LIMIT 1");
if ($row = mysqli_fetch_array($res)) {
    // Store the image file name
    $deleteImage = $row['image'];
}

// Define the folder path for image uploads
$folder = "uploads/";

// Delete the image file from the folder
unlink($folder . $deleteImage);

// Delete the record from the project table based on the ID
$result = mysqli_query($db, "DELETE FROM project WHERE id = $id");
if ($result) {
    // Redirect to the index page with action=deleted parameter
    header("location: project.php?action=deleted");
    exit; // Stop further execution
}
?>
