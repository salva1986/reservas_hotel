<?php

class ControladorHabitaciones {



	/*=============================================
	=MOSTRAR CATEGORIAS-HABITACIONES CON INNER JOIN=
	=============================================*/
	
	static public function ctrMostrarHabitaciones($valor){
		$tabla1 = "categorias";
		$tabla2 = "habitaciones";

		$respuesta = ModeloHabitaciones::mdlMOstrarHabitaciones($tabla1, $tabla2, $valor);

		return $respuesta;
	}

}