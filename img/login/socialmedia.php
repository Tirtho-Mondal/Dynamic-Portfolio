<?php
// Define database connection parameters

require_once("config.php");

$sql = "SELECT * FROM social_media_profiles";
$result = mysqli_query($db, $sql);

if (mysqli_num_rows($result) > 0) {
    echo "<table>";

    while ($row = mysqli_fetch_assoc($result)) {
        echo "<tr>";
        echo "<td>" . $row['platform'] . "</td>";
        echo "<td><img src='" . $row['img'] . "' alt='" . $row['alt'] . "' class='icon' onclick=\"window.open('" . $row['link'] . "')\" /></td>";
        echo "</tr>";
    }

    echo "</table>";
} else {
    echo "0 results";
}


?>
