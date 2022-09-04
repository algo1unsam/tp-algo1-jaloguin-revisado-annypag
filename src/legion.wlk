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
	
	method todosLosDisfracesConRepetidos(){
		var disfraces=[]
		integrantes
			.flatten()
			.forEach{integrante=>disfraces.add(integrante.disfraces())}
		return disfraces.flatten()
	}
	method disfracesRepetidos(){
		return 	self.todosLosDisfracesConRepetidos()
			.filter{disfraz=>self.todosLosDisfracesConRepetidos().occurrencesOf(disfraz)>1}
			.asSet() //Lista solo con los repetidos solo una vez cada uno
	}
	
	method normaSinRepetidos(){
		self.disfracesRepetidos()
			.forEach{disfraz=> integrantes
							.flatten()
							.forEach{integrante=> if (integrante.disfraces().occurrencesOf(disfraz)==1)
							integrante.disfraces().remove(disfraz)}}
	}
}













