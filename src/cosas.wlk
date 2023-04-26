object espadaDelDestino {
	var estaNueva = true
	
	method poderQueAporta(personaje){
		return personaje.poderBase() * self.porcentajePorUtilizacion()
	}
	
	method porcentajePorUtilizacion(){
		return if (estaNueva) 1 else 0.5
	}
	
	method usar(personaje){
		estaNueva = false
	}
}

object libroDeHechizos{ //Se define después!
	method poderQueAporta(personaje){
	 	return "no implementado aun"
	}
		
	method usar(personaje){
		//Implementar
	}
}

object collarDivino{
	var usos = 0
	
	method poderQueAporta(personaje){
		return 3 + self.poderPorUsos(personaje)
	}
	
	method poderPorUsos(personaje){
		return if(personaje.poderBase() > 6) usos else 0
	}
	
	method usar(personaje){
		usos += 1	
	}
}

object armaduraDeAceroValyrio{
	method poderQueAporta(personaje){
		return 6
	}
	
		
	method usar(personaje){ 
		//No se gasta nunca!	
	}
}