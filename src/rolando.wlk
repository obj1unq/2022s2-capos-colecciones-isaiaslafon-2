import moradas.*

object rolando{
	var property poderBase = 5
	const artefactos = #{}
	const historia = []
	var morada = castilloDePiedra
	var property capacidad = 2
	
	method tieneArtefactoFatal(personaje){
		return artefactos.any({ artefacto => self.esFatal(artefacto, personaje)})	
	}
	
	method esFatal(artefacto, personaje){
		return self.poderCon(artefacto) > personaje.poderDePelea()	
	}
	
	method poderCon(artefacto){
		return poderBase + artefacto.poderQueAporta(self)
	}
	
	method poderDePelea(){
		return poderBase + self.poderArtefactos()
	}
	
	method puedeVencer(personaje){
		return personaje.poderDePelea() < self.poderDePelea() 
	}
	
	method artefactoMasPoderosoEnMorada(){
		return morada.artefactoMasPoderoso(self)
	}
	
	method poderArtefactos(){
		return artefactos.sum({artefacto => artefacto.poderQueAporta(self)})	
	}
	
	method artefactoFatal(personaje){
		return artefactos.find({artefacto => self.esFatal(artefacto, personaje)})
	}
	
	method encontrar(artefacto){
		historia.add(artefacto)
		//Con errores es dificil testear el historial!
		//self.validarCapacidad()
		//cosas.add(artefactos)
		if(self.tieneCapacidad()) artefactos.add(artefacto)
	}
	
	method pelea(){
		poderBase += 1
		artefactos.forEach({artefacto => artefacto.usar(self)})
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
		return artefactos + morada.artefactos()
	}
	
	method posee(artefacto){
		return self.posesiones().contains(artefacto)
	}
	
	method historia(){
		return historia
	}
}
