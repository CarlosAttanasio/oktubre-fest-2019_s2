import marcas.*
import Jarras.*
import carpas.*

class Personas{
	var property peso = 0
	const property jarrasCompradas = []
	var property nivelDeAguante = 0
	var property leGustaLaMusicaTradicional = true
	var property nacionalidad = null
	
	method comprarJarra (unaJarra){ jarrasCompradas.add(unaJarra)}
	
	method cantAlcoholIngerido(){ 
		return jarrasCompradas.sum({ jarra => jarra.contenidoAlcohol()})
	}
	
	method estaEbria(){return (self.cantAlcoholIngerido() * self.peso()) > nivelDeAguante }
	
	method leGusta(unaCerveza)

	method quiereEntrar(carpa){
		return (self.leGusta(carpa.marcaQueVende() and carpa.tieneBanda())) == self.leGustaLaMusicaTradicional()
	}

	method puedeEntrar(carpa){
		return  carpa.dejaEntrar(self) and self.quiereEntrar(carpa)
	}

	method ebrioEmpedernido(){ return jarrasCompradas.all{ jarra => jarra.capacidad() >= 1} }
	
	method esPatriota(){
		return jarrasCompradas.all({ jarra => jarra.marca().paisDondeSeFabrica() == self.nacionalidad() })}
	
}

class Belgas inherits Personas {
	override method leGusta(unaCerveza) = unaCerveza.contenidoLupulo() > 4 }
		
class Checos inherits Personas {
	override method leGusta(unaCerveza) = unaCerveza.graduacionAlcoholica() > 8 }
		
class Alemanes inherits Personas {
	override method quiereEntrar(carpa) = super(carpa) && (carpa.personasAdentro().even()) }
	
	