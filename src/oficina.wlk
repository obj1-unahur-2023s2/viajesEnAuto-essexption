object oficina {
	var remiseraPrincipal
	var remiseraSecundaria
	
	method asignarRemiseras(remisera1, remisera2){
		remiseraPrincipal = remisera1
		remiseraSecundaria = remisera2
	}
	method cambiarPrimerRemiserarPor(remisera){
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
		
	}
}
