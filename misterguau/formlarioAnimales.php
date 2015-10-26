 <html>
 <head>
 	<meta charset="UTF-8">
 	<link rel="stylesheet" type="text/css" href="formulariosAnimales.css">
	<TITLE></TITLE>                                                
 </head>                                                                 
 <body bgcolor="#EFFFF5">      
 	<div>	
 		<fieldset>
 			<legend><b>Resultados</b> </legend><br/>
 			<div>

 				<?php header ('Conten-Type:text/html; charset=ISO-8859-1');
 					include("conexion.php");
 					$con = new conexion();
 					$con->recuperarDatos();


 				?>


 			</div>	
 		</fieldset>

 	</div> 
 	
 </body>                                                                 
 </html>
