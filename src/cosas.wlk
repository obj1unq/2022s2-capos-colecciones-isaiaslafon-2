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

object libroDeHechizos{
	const hechizos = []
	 
	 
	method agregarHechizo(hechizo){
		hechizos.add(hechizo)	
	}

	
	method poderQueAporta(personaje) = if(self.quedanHechizos()) self.hechizoActual().poder(personaje) else 0
			
	method usar(personaje){
		if(self.quedanHechizos()){
			hechizos.remove(self.hechizoActual())
		}
	}
	
	method hechizoActual(){
		return hechizos.head()
	}
	
	method quedanHechizos(){
		return not hechizos.isEmpty()
	}
}

object bendicion{
	const poder = 4
	
	method poder(personaje){
		return poder
	}
}

object invisibilidad{
	method poder(personaje){
		return personaje.poderBase()
	}
}

object invocacion{
	method poder(personaje){
		return personaje.artefactoMasPoderosoEnMorada().poderQueAporta(personaje)
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