<?php
$conn = new mysqli("localhost", "root", ">{vai/kgvr.q", "school_app");
$result = $conn->query("SELECT * FROM hours ORDER BY hour_number ASC");

$hours = [];
while ($row = $result->fetch_assoc()) {
  $hours[] = $row;
}
echo json_encode($hours);
?>
