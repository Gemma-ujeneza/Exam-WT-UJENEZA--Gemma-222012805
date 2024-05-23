<?php
include('db_connection.php');

// Check if AdoptionID is set
if(isset($_REQUEST['AdoptionID'])) {
    $AdoptionID = $_REQUEST['AdoptionID'];

    // Prepare and execute the DELETE statement
    $stmt = $connection->prepare("DELETE FROM adoptions WHERE AdoptionID=?");
    $stmt->bind_param("i", $AdoptionID);
?>
<!DOCTYPE html>
<html>
<head>
    <title>Delete Record</title>
    <script>
        function confirmDelete() {
            return confirm("Are you sure you want to delete this record?");
        }
    </script>
</head>
<body>
    <form method="post" onsubmit="return confirmDelete();">
        <input type="hidden" name="AdoptionID" value="<?php echo $AdoptionID; ?>">
        <input type="submit" value="Delete">
    </form>

    <?php
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        if ($stmt->execute()) {
            echo "Record deleted successfully.";
        } else {
            echo "Error deleting data: " . $stmt->error;
        }
    }
    ?>
</body>
</html>
<?php

    $stmt->close();
} else {
    echo "AdoptionID is not set.";
}

$connection->close();
?>
