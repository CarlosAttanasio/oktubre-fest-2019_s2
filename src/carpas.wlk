import Jarras.*
import personas.*
import marcas.*

class Carpa {
	var property limiteAdmision = 0
	var property tieneBanda = true
	var property marcaQueVende = null
	const property personasAdentro = []
	
	method cantidadDePersonasAdentro()  { return personasAdentro.size() }
	
	
	method dejaEntrar(persona){
		return limiteAdmision <= self.cantidadDePersonasAdentro() and not persona.estaEbria()
	}	


	method puedeIngresar(persona){
		if (persona.puedeEntrar(self)){personasAdentro.add(persona)}
		else{self.error("No puede entrar")}
	}

	method servirJarra(persona,litros) {
		if (personasAdentro.contains(persona)) {
			persona.comprarJarra(new Jarra(capacidad = litros, marca = self.marcaQueVende()))
		} else {
			self.error("No está en esta carpa")
		}
	}


}
