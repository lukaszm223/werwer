<?php
$conn = mysqli_connect("localhost", "root", "", "mysqli_example");
if(isset($_POST['aktualizuj'])) {
    $id = $_POST['id'];
    $cena = $_POST['nowa_cena'];
    $sql = "UPDATE produkty SET cena='$cena'  WHERE id=$id";
    if(mysqli_query($conn, $sql)) {
        header("location:index.php");
    }
}