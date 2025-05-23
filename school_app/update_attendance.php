<?php
header('Content-Type: application/json');
$data = json_decode(file_get_contents("php://input"), true);

$studentId = $data['student_id'];
$hour = $data['hour'];
$status = $data['status'];

$conn = new mysqli("localhost", "root", "", "school_app");

if ($conn->connect_error) {
    echo json_encode(['success' => false, 'message' => 'DB connection failed']);
    exit;
}

// Use REPLACE INTO to insert or update
$query = "REPLACE INTO attendance (student_id, hour, status) VALUES (?, ?, ?)";
$stmt = $conn->prepare($query);
$stmt->bind_param("iis", $studentId, $hour, $status);

if ($stmt->execute()) {
    echo json_encode(['success' => true]);
} else {
    echo json_encode(['success' => false, 'message' => 'DB error']);
}

$conn->close();
?>
