<?php
require_once('..\RENA\data\classdata.php');
class alumnosgrado{
  public function insert($data=array())
  {

  }
  public function list() //retorna un data table
  {
    $db=new data();
    $db->connect();
    $query = "SELECT * FROM alumnosgrado";
    $dt=mysqli_query($db->objconexion,$query);

    $db->disconnect();
    return $dt;
  }

}
?>
