<?php
$servername = "localhost"; // change if necessary
$username = "Amr"; // change if necessary
$password = "amr@2020"; // change if necessary
$dbname = "leapofdanceacademy"; // change to your database name


// Set parameters and execute
$name = $_POST['name'];
$placeofbirth = $_POST['placeofbirth'];
$Nationality = $_POST['Nationality'];
$city = $_POST['city'];
$gender = $_POST['gender'];
$email = $_POST['email'];
$phone = $_POST['phone'];
$sponsorTerms = $_POST['sponsorTerms'];
$status = $_POST['status'];

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$sql = "INSERT INTO `sponsor` (`id`, `name`, `placeOfBirth`, `Nationality`, `City`, `Gender`, `email`, `phone`, `sponsorTerms`) 
VALUES (NULL, '$name', '$placeofbirth', '$Nationality', '$city', '$gender', '$email', '$phone', '$sponsorTerms') ";
// VALUES ('$interestReason', '$stayingDuration', '$skills', $GoFundMeRadio, '$GoFundMeOtherReason', '$ideas', '$email', '$phone', $status)";

if ($conn->query($sql) === TRUE) {
    print json_encode(['status' => 'success', 'message' => 'New record created successfully']);
} else {
    print json_encode(['status' => 'error', 'message' => 'Error: ' . $stmt->error]);
}

$conn->close();
?> 