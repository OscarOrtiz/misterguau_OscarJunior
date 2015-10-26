
<!DOCTYPE html>
<html>
    <head>
        <title></title>
        <meta charset="utf-8">
 
       
    </head>

    <body>
    	<input type='button' value='Volver atrás' onclick='history.back()' style='font-family: Verdana; font-size: 10 pt'><br><br>
		
	    <?php 
		class conexion{
		function recuperarDatos(){
			$host = "localhost";
			$user = "root";
			$pw = "";
			$db = "bd_botiga_animals";

			$con = mysql_connect($host, $user, $pw) or die("No se puede conectar a la BD");
			mysql_select_db($db, $con) or die ("No se encuentra la BD");
			$query = "SELECT * FROM tbl_anunci,tbl_contacte WHERE tbl_anunci.contact_id=tbl_contacte.contact_id AND raca_id=$_REQUEST[raca_id]";

			$resultado = mysql_query($query);
			echo "$_REQUEST[mun_id]";

			while ($fila = mysql_fetch_array($resultado)) {
 
				echo "<table class='tabla' ><tr><td colspan='2' class='lista' bgcolor='#EFFFF5'>";
				echo utf8_encode("<b>$fila[anu_nom]"."</b><br />");
				echo "$fila[anu_data]"."<br/></td></tr><tr><td width='200'>";

				$fichero="img/$fila[anu_foto]";
				
					if (empty($fila['anu_foto']) ) {
						echo "<img class='foto' src='img/no_disponible.jpg'>";
					}else{

						if(file_exists($fichero)){
								
							echo "<img class='foto' src='$fichero'>";
						} else {
								
							echo "<img class='foto' src='img/no_disponible.jpg'>";
						}

					}	
				echo "</td><td class='lista2'>";	
				
				echo utf8_encode("$fila[anu_contingut]"."<br /> <br>");
				echo utf8_encode("Contacto: $fila[contact_nom]"."<br /> <br>");
				echo utf8_encode("Tlf: $fila[contact_telf]"."<br /> <br>");
				echo "</td></tr><br>";

			}
		}

	}

	


	?>

	</table>

	
    </body>

</html>
