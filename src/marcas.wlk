import Jarras.*
import personas.*
import carpas.*

object graduacionReglamentaria {
	var property graduacion = 0	
}

class Marca {
	var property marca = null
	var property contenidoLupulo = 0
	var property paisDeOrigen = null
	
	method graduacionAlcoholica()
		
	method contenidoDeLupulo(){ return contenidoLupulo}
	
	method paisDondeSeFabrica() {return paisDeOrigen}

}

class CervezaRubia inherits Marca{
	
	var property graduacion = null
	override method graduacionAlcoholica(){return graduacion}
	
}

class CervezaNegra inherits Marca{
		
	override method graduacionAlcoholica(){return graduacionReglamentaria.graduacion().min(2 * contenidoLupulo)}
	
}

class CervezaRoja inherits CervezaNegra{
	
	override method graduacionAlcoholica(){ return super() * 1.25}
}