object trajeDeBruja {
	method nivelSusto() {
		return 10
	}
} 

object barba {
	var longitud=2
	method nivelSusto() {
		return 5*longitud
	}
}

object mascaraDracula {
	const tamanio = 2
	method nivelSusto() {
		return tamanio*2
	}

}

object mascaraFrankenstein {
	const tamanio = 2
	method nivelSusto() {
		return tamanio*11
	}
}

object mascaraPolitico {
	const tamanio = 2
	var promesas =5
	method nivelSusto() {
		return tamanio*promesas
	}
	}

