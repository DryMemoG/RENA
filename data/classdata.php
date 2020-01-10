<?php
class data
{
	private $servidor= 'localhost';
	private $usuario ="root";
	private $pass="";
	private $db="rena";
	public $objconexion;
	public function connect()
	{
		$this->objconexion = mysqli_connect($this->servidor,$this->usuario,$this->pass,$this->db) or die("Error de Conexion");
	}
	public function disconnect()
	{
		mysqli_close($this->objconexion);
	}
}

 ?>
