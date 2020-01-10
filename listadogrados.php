<!DOCTYPE html>
<html lang="s" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Listado de Grados</title>
  </head>
  <body>
    <?php
		require_once('bussinesslogic\classgrado.php');
		$zapato = new zapato();
		$dt=$zapato->listar();
	?>


  </body>
</html>
