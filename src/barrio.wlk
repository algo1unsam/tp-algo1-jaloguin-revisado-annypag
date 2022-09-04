import chicos.*

object barrio{
	var chicos=[]
	method chicos(chicos_){
		chicos.add(chicos_)
	}
	method chicosConMasCaramelos(n) {
		return chicos 
			.flatten()
			.sortedBy({ integrante1, integrante2 => integrante1.caramelos() > integrante2.caramelos()})
			.take(n)
	}
	method algunoMuyAsustador() {
		return chicos
			.flatten()
			.any{chico=>chico.capacidadSusto()>42}
	}
	
}
