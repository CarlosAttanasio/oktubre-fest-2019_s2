import marcas.*
import personas.*
import carpas.*

class Jarra {
	var property capacidad = 0
	var property marca = null

	method contenidoAlcohol(){return self.capacidad() * marca.graduacionAlcoholica()}
	method paisOrigen(){return marca.paisDondeSeFabrica()}

}
