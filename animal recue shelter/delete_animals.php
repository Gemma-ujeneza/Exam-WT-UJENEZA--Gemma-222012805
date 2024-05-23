<?php
include('db_connection.php');

// Check if AdoptionID is set
if(isset($_REQUEST['AnimalID'])) {
    $animal_id = $_REQUEST['AnimalID'];

    // Prepare and execute the DELETE statement
    $stmt = $connection->prepare("DELETE FROM animals WHERE AnimalID=?");
    $stmt->bind_param("i", $animal_id);
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
        <input type="hidden" name="AnimalID" value="<?php echo $animal_id; ?>">
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
    echo "AnimalID is not set.";
}

$connection->close();
?>
