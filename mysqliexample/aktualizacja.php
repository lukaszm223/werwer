<?php
$conn = mysqli_connect("localhost", "root", "", "mysqli_example");
if(isset($_POST['aktualizuj'])) {
    $id = $_POST['id'];
    $nazwa = $_POST['nowa_nazwa'];
    $email = $_POST['nowy_email'];
    $sql = "UPDATE uzytkownicy SET nazwa='$nazwa', email='$email' WHERE id=$id";
    if(mysqli_query($conn, $sql)) {
        header("location:index.php");
    }
}
