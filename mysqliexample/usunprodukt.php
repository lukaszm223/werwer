<?php
$conn = mysqli_connect('localhost','root','','mysqli_example');
$id_koszyka = $_POST['id_koszyka'];
$sql = "DELETE FROM koszyk WHERE id_koszyka = $id_koszyka";

mysqli_query($conn, $sql);

