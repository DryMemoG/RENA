<?php

          require_once('bussinesslogic\classgrado.php');


      $grado = new grado();
      $nombregrado =$_POST['nombregrado'];


      $array = array('nombregrado'=>$nombregrado);

      $grado->insert($array);
      header('Location: listgrados.php');


      ?>
