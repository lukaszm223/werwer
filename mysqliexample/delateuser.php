<?php
$conn = mysqli_connect("localhost", "root", "", "mysqli_example");

$user_id = $_POST['user_id'];
$sql = "DELETE FROM uzytkownicy WHERE id = $user_id";

mysqli_query($conn, $sql);
header("Location: index.php");