<?php 

require_once "conexion.php";

Class ModeloRecorrido{

	/*=============================================
	=            Mostrar Recorrido            =
	=============================================*/
	static Public function mdlMostrarRecorrido($tabla){

		$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla");

		$stmt -> execute();

		return $stmt -> fetchAll();

		
	}
	
	

	
}