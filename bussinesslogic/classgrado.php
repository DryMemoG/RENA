<?php
require_once('..\RENA\data\classdata.php');
class grado{
  public function insert($data=array())
  {
    $db=new data();
    $db->connect();
    foreach($data as $field=>$value)
    {
      $$field=$value;
    }
    $query = "INSERT INTO grado(nombregrado) VALUES (''$nombregrado')";
    $consulta = mysqli_query($db->objconexion,$query);
    $db->disconnect();
    echo"<script type=\"text/javascript\"> alert(\"Grado Agregado\");
    </script>";
  }
  public function list() //retorna un data table
  {
    $db=new data();
    $db->connect();
    $query = "SELECT * FROM grado";
    $dt=mysqli_query($db->objconexion,$query);

    $db->disconnect();
    return $dt;
  }

}
?>
