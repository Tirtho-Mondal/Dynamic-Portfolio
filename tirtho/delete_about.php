<?php 
require_once("config.php");

if(isset($_GET['id'])) {
    $id = $_GET['id'];
    // Delete the item
    if(mysqli_query($db, "DELETE FROM about WHERE id=$id")) {
        header("location: about.php?action=deleted");
        exit;
    } else {
        echo '<div class="message">Error deleting item.</div>';
    }
}
?>
