<?php
if($_POST['formSubmit'] == "Submit") 
    {
    $errorMessage = "";
    
    if(empty($_POST['anu_nom'])) 
        {
      $errorMessage .= "<li>Ha dejado el anuncio en blanco</li>";
    }
    if(empty($_POST['anu_tipus'])) 
        {
      $errorMessage .= "<li>No ha elegido tipos de animal</li>";
    }



  if($_POST['formSubmit'] == "Submit") 
  {
    $varAnu_contenido = $_POST['anu_contingut'];
    $varAnu_nom = $_POST['anu_nom'];
    $varData_nom = $_POST['anu_data'];
    $varAnu_foto = $_POST['anu_foto'];
    $varAnu_tipus = $_POST['anu_tipus'];
    $varRaca_id = $_POST['raca_id'];
    $varMun_id = $_POST['mun_id'];
  }


      $db = mysqli_connect("localhost","root","");
      if(!$db) die("Error connecting to MySQL database.");
      mysqli_select_db("bd_botiga_animals" ,$db);

      $sql = "INSERT INTO tbl_anunci (anu_contingut, anu_nom, anu_data, anu_foto, anu_tipus, raca_id, mun_id) VALUES (".
              PrepSQL($anu_contingut) . ", " .
              PrepSQL($anu_nom) . ", " .
              PrepSQL($anu_data) . ", " .
              PrepSQL($anu_foto) . ", " .
              PrepSQL($anu_tipus) . ", " .
              PrepSQL($raca_id) . ", " .
              PrepSQL($mun_id) . ")";
      mysqli_query($sql);
      
      header("Location: insertar.php");
      exit();
    
  }

  function PrepSQL($value)
    {
        // Stripslashes
        if(get_magic_quotes_gpc()) 
        {
            $value = stripslashes($value);
        }

        // Quote
        $value = "'" . mysqli_real_escape_string($value) . "'";

        return($value);
    }

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 
<html xmlns="http://www.w3.org/1999/xhtml"> 
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<title>Documento sin t&iacute;tulo</title> 
</head> 
<body> 

  <form action="<?php echo htmlentities($_SERVER['PHP_SELF']); ?>" method="post">
   <p>Anuncio: <input type='anu_nom' name='anuncio' value="$varAnu_nom" /></p>
   <p>Fecha: <input type='date' name='anu_data' value="$varData_nom"/></p>
   <p>Imagen: <input type="image" name="anu_foto" value="$varAnu_foto"/></p>
  <p>Animal<p>
    <select name="anu_tipus">
      <option value="1">Perro</option>
      <option value="2">Gato</option>
      <option value="3">Pajaro</option>
      <option value="4">Otros</option>
    </select>
    </p>
  </p>
  <p>Raza<p>
    <select name="raca_id">
      <option value="8">Boxer</option>
      <option value="9">Pastor alemany</option>
      <option value="10">Golden retriever</option>
      <option value="11">Husky</option>
      <option value="12">Border collie</option>
      <option value="13">Creuat</option>
      <option value="14">Beagle</option>
      <option value="15">Persa</option>
      <option value="16">Siamés</option>
      <option value="17">Comú</option>
      <option value="18">Abisini</option>
      <option value="19">Bobtail</option>
      <option value="20">Canari</option>
      <option value="21">Periquito</option>
      <option value="22">Fura</option>
      <option value="23">Conill</option>
      <option value="23">Hàmster</option>
      <option value="24">Teixó</option>
      <option value="25">Ánec</option>
      <option value="26">Ornitorinc</option>
    </select>
    </p>
  </p>
    <p>Municipio<p>
    <select name="mun_id">
      <option value="1">Barcelona</option>
      <option value="2">Sant Feliu de Llobregat</option>
      <option value="3">Sant Joan d'Espí</option>
      <option value="4">El Prat de Llobregat</option>
      <option value="5">L'Hospitalet de Llobregat</option>
      <option value="6">Martorell</option>
      <option value="7">Cornellà de Llobregat</option>
      <option value="8">Castelldefels</option>
      <option value="9">Viladecans</option>
      <option value="10">Begues</option>
      <option value="11">Castellbisbal</option>
      <option value="12">Sant Sadurní d´Anoia</option>
      <option value="13">Rubí</option>
      <option value="14">Sant Cugat del Vallès</option>
      <option value="15">Sitges</option>
    </select>
    </p>
  </p>
  <p>Contenido del anuncio:<br/>
   <textarea name="anu_contenido" rows="7" cols="30" value="$varAnu_contenido"></textarea>
  </p>
   <p><input type='submit' name='Submit' value='Submit' /></p>
</form>

</body> 
</html>

