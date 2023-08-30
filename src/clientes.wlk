object ludmila {
	/* cons property precioPorKm() = 18
	 * Solo genera el getter
	 */

	method precioPorKm() = 18		
	
}

object anaMaria {
	/* 
	method precioPorKm(){
		if (self.estableEconomicamente()) return 30 else return 25
	}		
	*/
	var estableEconomicamente = true 

	method estableEconomicamente() = estableEconomicamente
	method cambiarSituacionEconomica() { 
		estableEconomicamente = ! estableEconomicamente
	}
	method precioPorKm() =
		if(estableEconomicamente) {30} else {25}
}

object teresa {
	/* 
	 *  var property genera el setter y el getter (usar con discreción)
		var precioXKm = 22 
		method precioPorKm() = precioXKm
		method precioPorKm(unPrecio) { precioXKm = unPrecio}
	 */
	var property precioPorKm = 22
}

object melina {
	var trabajaPara
	method trabajaPara() = trabajaPara
	method trabajaPara(unCliente){
		if (self == unCliente) self.error("No se puede trabjar para sí mismo")
		trabajaPara = unCliente
	}
	method precioPorKm() = trabajaPara.precioPorKm() - 3 
}
