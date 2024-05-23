<?php
include('db_connection.php');

// Check if AdoptionID is set
if (isset($_REQUEST['AdoptionID'])) {
    $adoption_id = $_REQUEST['AdoptionID'];

    // Prepare statement with parameterized query to prevent SQL injection (security improvement)
    $stmt = $connection->prepare("SELECT * FROM adoptions WHERE AdoptionID=?");
    $stmt->bind_param("i", $adoption_id);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        $animal_id = $row['AnimalID'];
        $adopter_name = $row['AdopterName'];
        $adoption_date = $row['AdoptionDate'];
    } else {
        echo "Adoption not found.";
    }

    $stmt->close(); // Close the statement after use
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Update Adoption Information</title>
    <!-- JavaScript validation and content load for update or modify data-->
    <script>
        function confirmUpdate() {
            return confirm('Are you sure you want to update this record?');
        }
    </script>
</head>
<body>
<center>
    <!-- Update adoption information form -->
    <h2><u>Update Adoption Information</u></h2>
    <form method="POST" onsubmit="return confirmUpdate();">
        <label for="animal_id">Animal ID:</label>
        <input type="number" name="animal_id" value="<?php echo isset($animal_id) ? $animal_id : ''; ?>">
        <br><br>

        <label for="adopter_name">Adopter Name:</label>
        <input type="text" name="adopter_name" value="<?php echo isset($adopter_name) ? $adopter_name : ''; ?>">
        <br><br>

        <label for="adoption_date">Adoption Date:</label>
        <input type="text" name="adoption_date" value="<?php echo isset($adoption_date) ? $adoption_date : ''; ?>">
        <br><br>

        <input type="submit" name="up" value="Update">
    </form>
</center>
</body>
</html>

<?php
if (isset($_POST['up'])) {
    // Retrieve updated values from form
    $animal_id = $_POST['animal_id'];
    $adopter_name = $_POST['adopter_name'];
    $adoption_date = $_POST['adoption_date'];

    // Update the adoption in the database (prepared statement again for security)
    $stmt = $connection->prepare("UPDATE adoptions SET AnimalID=?, AdopterName=?, AdoptionDate=? WHERE AdoptionID=?");
    $stmt->bind_param("issi", $animal_id, $adopter_name, $adoption_date, $adoption_id);
    $stmt->execute();

    // Redirect to appropriate page after update
    header('Location: adoptions.php');
    exit(); // Ensure no other content is sent after redirection
}

// Close the connection (important to close after use)
mysqli_close($connection);
?>
