<?php 

require_once "conexion.php";

Class ModeloRestaurante{

	/*=============================================
	=            Mostrar Restaurante            =
	=============================================*/
	static Public function mdlMostrarRestaurante($tabla){

		$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla");

		$stmt -> execute();

		return $stmt -> fetchAll();

		
	}
	
	

	
}