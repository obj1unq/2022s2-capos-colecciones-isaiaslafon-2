object erethia{
	const habitantes = #{archibaldo, caterina, astra}
	
	method esPoderoso(personaje){
		return habitantes.all({habitante => personaje.puedeVencer(habitante)})
	}
	
	method moradasConquistables(personaje){
		return self.habitantesVencibles(personaje).map({habitante => habitante.morada()}).asSet() 
	}
	
	method habitantesVencibles(personaje){
		return habitantes.filter({habitante => personaje.puedeVencer(habitante)})
	}	
}

object archibaldo {
	const property morada = palacioDeMarmol

	method poderDePelea(){
		return 16
	}
}

object caterina {
	const property morada = fortalezaDeAcero

	method poderDePelea(){
		return 28
	}
}

object astra {
	const property morada = torreDeMarfil

	method poderDePelea(){
		return 14
	}
}

object palacioDeMarmol{
	
}

object fortalezaDeAcero{
	
}

object torreDeMarfil{
	
}

