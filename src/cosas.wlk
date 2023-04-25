/*

- Armadura de acero valyrio: Aporta 6 de poder de pelea siempre, el acero valyrio no se gasta con las batallas.
 */
 
object espadaDelDestino {
	var estaNueva = true
	
	method poder(personaje){
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
	method poder(personaje){
	 
	}
		
	method usar(personaje){
		
	}
}

object collarDivino{
	var usos = 0
	
	method poder(personaje){
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
	method poder(personaje){
		return 6
	}
	
		
	method usar(personaje){ 
		//No se gasta!	
	}
}