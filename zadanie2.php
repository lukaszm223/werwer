<?php
$conn = mysqli_connect("localhost", "root", "", "php_practise");

$zadimie = $_POST['imie_nazwisko'];
$zadlogin = $_POST['login'];
$zadhaslo = $_POST['haslo'];
$zadwiek = $_POST['wiek'];
$zadkraj = $_POST['kraj'];
echo "
    <fieldset>
        <h3>Imię: $zadimie</h3>
        <p>login: $zadlogin</p>
        <p>haslo: $zadhaslo</p>
        <p>wiek: $zadwiek</p>
        <hr>
        <p>kraj: $zadkraj</p>
        </fieldset>
    ";

echo "<a href='../index.php'>Powróć na stronę główną</a>";
?>