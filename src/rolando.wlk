import moradas.*

object rolando{
	const cosas = #{}
	const historia = []
	var morada = castilloDePiedra
	var property capacidad = 2
	
	method encontrar(cosa){
		historia.add(cosa)
		//Con errores es dificil testear el historial!
		//self.validarCapacidad()
		//cosas.add(cosa)
		if(self.tieneCapacidad()) cosas.add(cosa)
	}
	
	method tieneCapacidad(){
		return cosas.size() < capacidad
	}
	
	method validarCapacidad() {
		if(!self.tieneCapacidad()) self.error("No puedo llevar más cosas!")
	}
	
	method cosas(){
		return cosas
	}
	
	method morada(_morada){
		morada = _morada
	}
	
	method visitarMorada(){
		morada.guardar(cosas)
		cosas.clear()
	}
	
	method artefactos(){
		return cosas + morada.baul()
	}
	
	method posee(cosa){
		return self.artefactos().contains(cosa)
	}
	
	method historia(){
		return historia
	}
}
