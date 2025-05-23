<?php
$host = "localhost";
$user = "root";
$pass = ">{vai/kgvr.q"; // Use your MySQL password if set
$db = "school_app";

$conn = new mysqli($host, $user, $pass, $db);

if ($conn->connect_error) {
    die(json_encode(["success" => false, "error" => "Connection failed: " . $conn->connect_error]));
}
?>
