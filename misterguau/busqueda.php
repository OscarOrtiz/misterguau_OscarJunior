<?php
//include('conexion.php');
//$anu_nom=$_GET['anu_nom'];
//$query="select anu_contingut,anu_nom,anu_data,anu_foto,raca_id,mun_id,contact_id,anu_tipus from tbl_anunci where anu_nom like '%anu_nom' order by anu_nom asc";
//$datos = mysqli_query($query);
//while($tbl_anunci = mysqli_fetch_array($datos)){
//				echo "<b>Id: </b>" .$tbl_anunci['anu_id']."<br/>";
//				echo "<b>Nombre: </b>" .$tbl_anunci['anu_nom']."<br/>";
//				echo "<b>Anuncio: </b>" .$tbl_anunci['anu_contingut']."<br/>";
//				echo "<b>Fecha: </b>" .$tbl_anunci['anu_data']."<br/>";
//				echo "<br>";
//			}	

			$con = mysqli_connect('localhost', 'root', '', 'bd_botiga_animals');

			
			$sql = "SELECT * FROM tbl_anunci WHERE ";
			//anu_nom like '%anu_nom' order by anu_nom asc

			//$sql.=$_GET['anu_nom'];
			$sql.= "anu_tipus = 'Trobat'";
			
			$datos = mysqli_query($con, $sql);
		

			while($tbl_anunci = mysqli_fetch_array($datos)){

				
				echo "<b>Id: </b>" .$tbl_anunci['anu_id']."<br/>";
				echo "<b>Nombre: </b>" .$tbl_anunci['anu_nom']."<br/>";
				echo "<b>Anuncio: </b>" .$tbl_anunci['anu_contingut']."<br/>";
				echo "<b>Fecha: </b>" .$tbl_anunci['anu_data']."<br/>";
				echo "<br>";
			}	
			
			//cerramos la conexión con la base de datos
			mysqli_close($con);
?>