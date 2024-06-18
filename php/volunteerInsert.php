<?php
$servername = "localhost"; // change if necessary
$username = "Amr"; // change if necessary
$password = "amr@2020"; // change if necessary
$dbname = "leapofdanceacademy"; // change to your database name


// Set parameters and execute
$interestReason = $_POST['interestReason'];
$stayingDuration = $_POST['stayingDuration'];
$skills = $_POST['skills'];
$GoFundMeRadio = $_POST['GoFundMeRadio'];
$GoFundMeOtherReason = $_POST['GoFundMeOtherReason'];
$ideas = $_POST['ideas'];
$email = $_POST['email'];
$phone = $_POST['phone'];
$status = $_POST['status'];

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$sql = "INSERT INTO volunteer (interestReason, stayingDuration, skills, GoFundMeRadio, GoFundMeOtherReason, ideas, email, phone, status)
VALUES ('$interestReason', '$stayingDuration', '$skills', '$GoFundMeRadio', '$GoFundMeOtherReason', '$ideas', '$email', '$phone', $status)";

if ($conn->query($sql) === TRUE) {
    print json_encode(['status' => 'success', 'message' => 'New record created successfully']);
} else {
    print json_encode(['status' => 'error', 'message' => 'Error: ' . $stmt->error]);
}

$conn->close();
?> 