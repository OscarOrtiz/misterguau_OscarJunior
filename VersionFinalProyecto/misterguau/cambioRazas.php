<?php

$conexion = mysqli_connect('localhost','root','','bd_botiga_animals') or die ('Conexión errónea');

$anu_tipus = $_REQUEST['anu_tipus'];

	$raza = mysqli_query($conexion,"SELECT * FROM tbl_raca WHERE tipus_anim_id = '$anu_tipus'");

	while($row = mysqli_fetch_array($raza)){
		echo '<option value="'.$row['raca_id'].'">'.utf8_encode($row['raca_nom']).'</option>';

	}

?>	