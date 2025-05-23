<?php
$conn = new mysqli("localhost", "root", ">{vai/kgvr.q", "school_app");
$data = json_decode(file_get_contents("php://input"), true);

$hour_id = $data['hour_id'];
$date = date("Y-m-d");

foreach ($data['attendance'] as $entry) {
  $student_id = $entry['student_id'];
  $status = $entry['status'];

  $check = $conn->query("SELECT * FROM attendtas WHERE student_id=$student_id AND hour_id=$hour_id AND date='$date'");

  if ($check->num_rows > 0) {
    $conn->query("UPDATE attendtas SET status='$status' WHERE student_id=$student_id AND hour_id=$hour_id AND date='$date'");
  } else {
    $conn->query("INSERT INTO attendtas (student_id, hour_id, date, status) VALUES ($student_id, $hour_id, '$date', '$status')");
  }
}

echo json_encode(["success" => true]);
?>
