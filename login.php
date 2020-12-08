<?php
include "conect.php";

$nome = "$_POST[nome]";
$senha = "$_POST[senha]";

$logar = $sql->query("select * from usuario
WHERE nome = '$nome' AND senha ='$senha' ");
    $check = mysqli_num_rows($logar);
    if($check == 1){
        header("Refresh: 0; url=home.html");
    }
    else{
      
      echo "<script type='text/javascript'> alert('Usuario Ou Senha Incorreto'); </script>" ;
               header("Refresh: 0; url=login.html");
	}


?>