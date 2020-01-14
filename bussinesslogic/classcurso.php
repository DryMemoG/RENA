<?php
require_once('..\RENA\data\classdata.php');
class curso{
  public function list2($codgrado) //retorna un data table
  {
    $db=new data();
    $db->connect();
    $query = "SELECT * FROM curso WHERE codgrado = $codgrado";
    $dt=mysqli_query($db->objconexion,$query);

    $db->disconnect();
    return $dt;
  }
  public function insert($data=array())
  {
    $db=new data();
    $db->connect();
    foreach($data as $field=>$value)
    {
      $$field=$value;
    }
    $query = "INSERT INTO curso(nombrecurso,codgrado) VALUES ('$nombrecurso',$codgrado)";
    $consulta = mysqli_query($db->objconexion,$query);
    $db->disconnect();
    echo"<script type=\"text/javascript\"> alert(\"Grado Agregado\");
    </script>";
  }
}
?>
