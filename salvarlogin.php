<?php
include "conect.php";
$nome = "$_POST[nome]";
$senha = "$_POST[senha]";
$sql->query("INSERT INTO usuario(nome,senha)
VALUES ('$nome','$senha')");
echo "<p><a href=login.html>[Fazer Login]</a></p>";
?>
