<?php
$conn = new mysqli("localhost", "root", ">{vai/kgvr.q", "school_app");

$hour_id = $_GET['hour_id'];
$date = date("Y-m-d");

$query = "
  SELECT s.id, s.name, a.status
  FROM students s
  LEFT JOIN attendtas a 
    ON s.id = a.student_id 
    AND a.hour_id = $hour_id 
    AND a.date = '$date'
";

$result = $conn->query($query);
$students = [];

while ($row = $result->fetch_assoc()) {
  $students[] = $row;
}

echo json_encode($students);
?>
