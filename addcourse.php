<?php

          require_once('bussinesslogic\classcurso.php');


      $curso = new curso();
      
      $codgrado = $_POST['codgrado'];

      $array = array('nombrecurso'=>$_POST['nombrecurso'], 'codgrado'=>$codgrado);

      $curso->insert($array);
      header('Location: detallegrado.php?'.$codgrado);


?>
