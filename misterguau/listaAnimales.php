<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html" charset="UTF-8"/>
		<link rel="stylesheet" type="text/css" href="style.css" media="all">
		<title></title>
	</head>
	<body>
		<a href="listaanimales.php?opc=1">Introducir anuncio de animal perdido</a><br>
		<a href="listaanimales.php?opc=2">Consultar animales perdidos</a><br>

<?php
	if (isset($_GET['opc']) and $_GET['opc']==1) {
		echo "<form name='form1' action='nuevoanuncio.php' method='POST'>";
		echo "anu_contingut:<input type='text' name='anu_contingut'><br/>";
		echo "anu_nom:<input type='text' name='anu_nom'><br/>";
		echo "anu_data:<input type='date' name='anu_data'><br/>";
		echo "anu_foto:<input type='text' name='anu_foto'><br/>";
		echo "raca_id:<input type='text' name='raca_id'><br/>";
		echo "mun_id:<input type='text' name='mun_id'><br/>";
		echo "contact_id:<input type='text' name='contact_id'><br/>";
		echo "anu_tipus:<input type='text' name='anu_tipus'><br/>";
		echo "<input type='submit' value='Guardar'><br/>";
		echo "</form>";
	}else{
		echo "<form name='form1' action='formlarioAnimales.php' method='GET'>";
		echo "Ingrese anuncio a buscar:<input type='text' name='buscar'><br/>";
		echo "<input type='submit' value='Buscar'><br/>";
		echo "</form>";
	}
?>
</body>
</html>