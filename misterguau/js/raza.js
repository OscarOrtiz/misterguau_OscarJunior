function cargarRazas(){
	$('#raca_id').html('<option selected>Cargando</option>');

	var idTipus = $('#anu_tipus').val();
	var toLoad = 'cambioRazas.php?anu_tipus='+idTipus;

	$.post(toLoad,function (responseText){

		$('#raca_id').html(responseText);

	});
 
}