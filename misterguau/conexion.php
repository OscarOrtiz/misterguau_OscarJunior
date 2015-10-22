<?php
class conexion{
	function recuperarDatos(){
		$host = "localhost";
		$user = "root";
		$pw = "";
		$db = "bd_botiga_animals";

		$con = mysql_connect($host, $user, $pw) or die("No se puede conectar a la BD");
		mysql_select_db($db, $con) or die ("No se encuentra la BD");
		$query = "SELECT * FROM tbl_anunci ";
		$resultado = mysql_query($query);

		while ($fila = mysql_fetch_array($resultado)) {


			$fichero="img/$fila[anu_foto]";
			
				if (empty($fila['anu_foto'])) {
					echo "<img src='img/no_disponible.jpg'>";
				}else{

					if(file_exists($fichero)){
							
						echo "<img src='$fichero'>";
					} else {
							
						echo "<img src='img/no_disponible.jpg'>";
					}

				}	

			echo "<br />$fila[anu_nom]"."<br />";
			echo "$fila[anu_contingut]"."<br /> <br>";
		}
	}

}

?>