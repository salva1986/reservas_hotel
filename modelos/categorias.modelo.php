<?php 

require_once "conexion.php";

Class ModeloCategorias{

	/*=============================================
	=            Mostrar Categorias            =
	=============================================*/
	static Public function mdlMostrarCategorias($tabla){

		$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla");

		$stmt -> execute();

		return $stmt -> fetchAll();

		
	}
	
	

	
}