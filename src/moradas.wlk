object castilloDePiedra {
	const artefactos = #{}
	
	method guardar(_artefactos){
		artefactos.addAll(_artefactos)
	}
	
	method artefactos(){
		return artefactos
	}
	
	method artefactoMasPoderoso(personaje){
		return artefactos.max({artefacto => artefacto.poderQueAporta(personaje)})
	}
	
}
