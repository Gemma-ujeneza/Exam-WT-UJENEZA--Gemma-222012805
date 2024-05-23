<?php
// Connection details
$host = "localhost";
$user = "GEMMa";
$pass = "gemma12";
$database = "animal_rescue_shelter";

// Creating connection
$connection = new mysqli($host, $user, $pass, $database);

// Check connection
if ($connection->connect_error) {
    die("Connection failed: " . $connection->connect_error);
}
?>