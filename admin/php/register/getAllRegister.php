<?php
include "../../../php/database.php";
header("Content-Type: application/json;charset=utf-8");
header('Content-Type: application/json');
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT * FROM contact";
$result = $conn->query($sql);
print  json_encode (  $result );

?>