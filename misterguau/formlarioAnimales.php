 <html>
 <head>
 	<meta charset="UTF-8">
	<TITLE></TITLE>                                                
 </head>                                                                 
 <body>      
 	<div>	
 		<fieldset>
 			<legend>Resultados: </legend>
 			<div>
 				<?php
 					include("conexion.php");
 					$con = new conexion();
 					$con->recuperarDatos();


 				?>
 			</div>	
 		</fieldset>
 	</div>
 </body>                                                                 
 </html>