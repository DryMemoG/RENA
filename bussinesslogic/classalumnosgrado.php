<?php
require_once('..\RENA\data\classdata.php');
class alumnosgrado{
  public function insert($data=array())
  {

  }
  public function list($codgrado) //retorna un data table
  {
    $db=new data();
    $db->connect();
    $query = "SELECT alumno.nombresalumno, alumno.apellidosalumno, alumnosgrado.codalumno, alumnosgrado.codgrado,
    codalumnosgrado  FROM alumnosgrado INNER JOIN alumno ON alumnosgrado.codalumno
    = alumno.codalumno WHERE codgrado ='$codgrado'";
    $dt=mysqli_query($db->objconexion,$query);

    $db->disconnect();
    return $dt;
  }

}
?>
