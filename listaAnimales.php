<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8"/>
		<title></title>
	</head>
	<body>
<?php
			//realizamos la conexión con mysql
			$con = mysqli_connect('localhost', 'root', '', 'bd_botiga_animals');

			$sql = "SELECT * FROM tbl_anunci WHERE ";


			$sql.= "anu_tipus = 'Perdut'";
			$datos = mysqli_query($con, $sql);
		

			while($tbl_anunci = mysqli_fetch_array($datos)){


				echo "<b>Id:</b>" .$tbl_anunci['anu_id']."<br/>";
				echo "<b>Nombre:</b>" .$tbl_anunci['anu_nom']."<br/>";
				echo "<b>Anuncio:</b>" .$tbl_anunci['anu_contingut']."<br/>";
				echo "<b>Fecha:</b>" .$tbl_anunci['anu_data']."<br/>";
				<br>
			}	
			
			//cerramos la conexión con la base de datos
			mysqli_close($con);
		?>
</body>
</html>