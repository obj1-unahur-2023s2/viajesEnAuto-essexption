import remiseras.*
import clientes.*

object oficina {
	var remiseraPrincipal
	var remiseraSecundaria
	
	method remiseraPrincipal() = remiseraPrincipal
	method remiseraSecundaria() = remiseraSecundaria
	method asignarRemiseras(remisera1, remisera2){
		remiseraPrincipal = remisera1
		remiseraSecundaria = remisera2
	}
	method cambiarPrimerRemiseraPor(remisera){
		remiseraPrincipal = remisera
	}
	method cambiarSegundoRemiseraPor(remisera){
		remiseraSecundaria = remisera
	}
	method intercambiarRemiseras() {
		var memoria
		memoria  = remiseraSecundaria
		remiseraSecundaria = remiseraPrincipal 
		remiseraPrincipal = memoria
	}
	method remiseraElegidaParaViaje (cliente, distanciaKm) {
		// Opcion 1
		if(remiseraPrincipal.precioViaje(cliente, distanciaKm) - 30 > remiseraSecundaria.precioViaje(cliente, distanciaKm)){
			self.intercambiarRemiseras()
		}
		return remiseraPrincipal
		// opcion 2
		/*
		 * 
		if(remiseraPrincipal.precioViaje(cliente, distanciaKm) - 30 > remiseraSecundaria.precioViaje(cliente, distanciaKm)){
			self.intercambiarRemiseras()
			return remiseraSecundaria
		}
		else{ return remiseraPrincipal }
		*/
	}
		
}
