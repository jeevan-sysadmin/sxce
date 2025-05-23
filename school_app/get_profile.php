<?php
header("Content-Type: application/json");
include("db.php");

// Modify query as per your table structure
$sql = "SELECT id, name, role, photo FROM users LIMIT 1";

$result = mysqli_query($conn, $sql);

if (!$result) {
    echo json_encode([
        "success" => false,
        "message" => "Database query failed: " . mysqli_error($conn)
    ]);
    exit;
}

$user = mysqli_fetch_assoc($result);

if ($user) {
    echo json_encode([
        "success" => true,
        "data" => $user
    ]);
} else {
    echo json_encode([
        "success" => false,
        "message" => "No user found"
    ]);
}
?>
