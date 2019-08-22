object pepita {
	var energia = 0

	method estaCansada() {
		return energia < 50
	}

	method vola(kms) {
		energia -= 10 + kms
	}

	method come(comida) {
		energia = energia + comida.energiaQueOtorga()
	}
	
	method estaFeliz(){
		return energia > 500 && energia < 1000 
	}
	
	method cuantoQuiereVolar(){ 
		var distancia = 0
		distancia = energia /5
		if(energia > 300 && energia < 400)
			distancia = distancia + 10
		if(energia % 20 == 0)
			distancia = distancia + 15
			return distancia
	}
	method salirAComer(){
		self.vola(5)
		self.come(alpiste)
		self.vola(5)
	}
}

object alpiste {
	var gramos = 10
	
	method energiaQueOtorga() { 
		return 4 * gramos
	}
	
	method gramos(nuevosGramos) {
		gramos = nuevosGramos
	}	
}

object manzana {
	method energiaQueOtorga() { 
		return 50
	}	
}

object mijo{
		var estado = mojado
		method energiaQueOtorga(){
		return estado.cuantaEnergiaOtorga()	
		}
		method secarse(){
			estado = seco
		}
		method mojarse(){
			estado = mojado
		}
}

object mojado{
	method cuantaEnergiaOtorga(){
		return 15
	}
}
object seco{
	method cuantaEnergiaOtorga(){
		return 20
	}
}