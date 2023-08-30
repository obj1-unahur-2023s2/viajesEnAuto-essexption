import clientes.*

object roxana {
	
	method precioViaje(cliente, distanciaKm) = cliente.precioPorKm()*distanciaKm
}

object gabriela {
	
	method precioViaje(cliente, distanciaKm) = cliente.precioPorKm() * distanciaKm * 1.2
}

object mariela {
	
	method precioViaje(cliente, distanciaKm) = 50.max(cliente.precioPorKm()*distanciaKm)
	
}

object juana {
	
	method precioViaje(_, distanciaKm){
		if (distanciaKm <= 8)
			return 100
		else
			return 200
	}

}

object lucia {
	var estaReemplazando
	
	method estaReemplazando() = estaReemplazando
	method estaReemplazando(unaRemisera){
		if (self == unaRemisera) 
			self.error("No se puede reemplazar a sí misma")
		estaReemplazando = unaRemisera
	}
	method precioViaje(cliente, distanciaKm) = estaReemplazando.precioViaje(cliente, distanciaKm)
}
