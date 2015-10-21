<?php
include('conexion2.php');

$anu_contingut=$_POST['anu_contingut'];
$anu_nom=$_POST['anu_nom'];
$anu_data=$_POST['anu_data'];
$anu_foto=$_POST['anu_foto'];
$raca_id=$_POST['raca_id'];
$num_id=$_POST['mun_id'];
$contact_id=$_POST['contact_id'];
$anu_tipus=$_POST['anu_tipus'];

$query="insert into tbl_anunci (anu_contingut,anu_nom,anu_data,anu_foto,raca_id,mun_id,contact_id,anu_tipus) values ('$anu_contingut','$anu_nom','$anu_data','$anu_foto','$raca_id','$mun_id','$contact_id','$anu_tipus')";
mysqli_query($query);
header('location:listaAnimales.php');
?>