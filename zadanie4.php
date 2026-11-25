<?php
$conn = mysqli_connect("localhost", "root", "", "php_practise");

$ankietaimie = $_POST['imie'];
$ankietadata = $_POST['data_urodzenia'];
$ankietakolor = $_POST['kolor'];
$ankietarange = $_POST['zadowolenie'];
$ankietaopinia = $_POST['ankieta'];

echo "
    <fieldset>
        <h3>Imię: $zadimie</h3>
        <p>data: $zadlogin</p>
        <p>kolor: $zadhaslo</p>
        <p>zadowolenie: $zadwiek</p>
        <p>opinia: $zadkraj</p>
    </fieldset>
    ";
