import moradas.*

object rolando{
	const artefactos = #{}
	const historia = []
	var morada = castilloDePiedra
	var property capacidad = 2
	
	method encontrar(artefacto){
		historia.add(artefacto)
		//Con errores es dificil testear el historial!
		//self.validarCapacidad()
		//cosas.add(artefactos)
		if(self.tieneCapacidad()) artefactos.add(artefacto)
	}
	
	method tieneCapacidad(){
		return artefactos.size() < capacidad
	}
	
	method validarCapacidad() {
		if(!self.tieneCapacidad()) self.error("No puedo llevar más cosas!")
	}
	
	method artefactos(){
		return artefactos
	}
	
	method morada(_morada){
		morada = _morada
	}
	
	method visitarMorada(){
		morada.guardar(artefactos)
		artefactos.clear()
	}
	
	method posesiones(){
		return artefactos + morada.baul()
	}
	
	method posee(artefacto){
		return self.artefactos().contains(artefacto)
	}
	
	method historia(){
		return historia
	}
}
