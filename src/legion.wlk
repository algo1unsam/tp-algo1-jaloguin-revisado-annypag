import chicos.*
import elementos.*
import adultos.*

object legionDelTerror {
	var integrantes = [ ]
	method capacidadSusto(){
		return integrantes
			.flatten()
			.sum{integrante => integrante.capacidadSusto()}
		}
	method lider(){
		return integrantes
			.flatten()
			.max{integrante =>integrante.capacidadSusto()}
		}
	method agregarIntegrantes(lista){
		integrantes.add(lista)
	}
	method recibirCaramelos(cantidad){
		self.lider().recibirCaramelos(cantidad)
	}
	method caramelos(){
		return integrantes
			.flatten()
			.sum{integrante => integrante.caramelos()}
	}
	
	method todosLosDisfraces(){
		var disfraces=[]
		integrantes
			.flatten()
			.forEach{integrante=>disfraces.add(integrante.disfraces())}
		return disfraces.flatten().asSet() //Borra los duplicados
	}
	
	method disfracesRepetidos(){
		var disfraces=[]
		integrantes
			.flatten()
			.forEach{integrante=>disfraces.add(integrante.disfraces())} //lista con todos los disfraces
		
		return disfraces.filter{disfraz=>disfraces.occurrencesOf(disfraz)>1}.asSet()  //por que se guarda tantas veces como este repetido
		
	}
	
	method normaSinRepetidos(){
		self.disfracesRepetidos()
			.forEach{disfraz=> integrantes
							.flatten()
							.forEach{integrante=> if (integrante.disfraces().occurrencesOf(disfraz)==1)
							integrante.disfraces().remove(disfraz)}}
	}
}













