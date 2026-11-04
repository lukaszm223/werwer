<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

<body>
<?php
$conn = mysqli_connect("localhost", "root", "", "mysqli_example");
if($conn){
    echo"Połaczono z bazą danych";
}else{
    echo"Połączenie nie powiodło się";
}?>
<?php
$result = mysqli_query($conn, "SELECT * FROM uzytkownicy");
echo "<table border='1' cellpadding='5'>";
echo "<tr>
    <th>ID</th>
    <th>Nazwa</th>
    <th>Email</th>
</tr>";

while($wiersz = mysqli_fetch_assoc($result)) {
    echo "<tr>";
    echo "<td>".$wiersz['id']."</td>";
    echo "<td>".$wiersz['nazwa']."</td>";
    echo "<td>".$wiersz['email']."</td>";
    echo "</tr>";
}
echo "</table>";
?>
<form action='adduser.php' method='POST'>
    <label for='nazwa'>
        <p>Podaj swoją nazwę:</p>
        <input type='text' name='nazwa' id='nazwa'/>
    </label>
    <label for='haslo'>
        <p>Podaj swoje hasło:</p>
        <input type='password' name='haslo' id='haslo'/>
    </label>
    <label for='email'>
        <p>Podaj swój email:</p>
        <input type='email' name='email' id='email'/>
    </label>

    <button>Dodaj</button>
</form>
<form method="post" action="aktualizacja.php">
    <label for="id">
        <p>Podaj ID:</p>
        <input type="text" name="id">
    </label>
    <label for="nowa_nazwa">
        <p>Podaj nową nazwę:</p>
        <input type="text" name="nowa_nazwa">
    </label>
    <label for="nowy_email">
        <p>Podaj nowy email:</p>
        <input type="text" name="nowy_email">
    </label>
    <input type="submit" name="aktualizuj" value="Aktualizuj">
</form>
<form action="delateuser.php" method="POST">
                <input type="number" name="user_id" id="user_id" placeholder="Podaj ID użytkownika">
                <button>Usuń użytkownika</button>
</form>
<?php
$resultt = mysqli_query($conn, "SELECT * FROM produkty WHERE dostępność = 1");
echo "<table border='1' cellpadding='5'>";
echo "<tr>
    <th>ID</th>
    <th>Nazwa</th>
    <th>Cena</th>
</tr>";
while($wierszz = mysqli_fetch_assoc($resultt)) {
    echo "<tr>";
    echo "<td>".$wierszz['id']."</td>";
    echo "<td>".$wierszz['nazwa']."</td>";
    echo "<td>".$wierszz['cena']."</td>";
    echo "</tr>";
}
echo "</table>";
?>
<form method="post" action="nowyprodukt.php">
    <label for="nazwa produktu">
        <p>Podaj nazwe produktu:</p>
        <input type="text" name="nazwa">
    </label>
    <label for="opis">
        <p>Podaj opis produktu:</p>
        <input type="text" name="opis">
    </label>
    <label for="cena">
        <p>Podaj cene produktu:</p>
        <input type="number" name="cena">
    </label>
    <label for="kategoria">
        <p>Podaj kategorie produktu:</p>
        <input type="text" name="kategoria">
    </label>
    <input type="submit" name="dodajprodukt" value="dodaj produkt">
</form>
<form method="post" action="aktualizacjaceny.php">
    <label for="id">
        <p>Podaj ID :</p>
        <input type="text" name="id">
    </label>
    <label for="nowa_cena">
        <p>Podaj nową cene:</p>
        <input type="number" name="nowa_cena">
    </label>
    <input type="submit" name="aktualizuj" value="Aktualizuj">
</form>
<?php
$result = mysqli_query($conn, "SELECT * FROM produkty INNER JOIN koszyk ON  ");
echo "<table border='1' cellpadding='5'>";
echo "<tr>
    <th>ID</th>
    <th>Nazwa</th>
    <th>Email</th>
</tr>";

while($wiersz = mysqli_fetch_assoc($result)) {
    echo "<tr>";
    echo "<td>".$wiersz['id']."</td>";
    echo "<td>".$wiersz['nazwa']."</td>";
    echo "<td>".$wiersz['email']."</td>";
    echo "</tr>";
}
echo "</table>";
?>
</body>
</html>


