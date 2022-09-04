import elementos.*

object macaria {
	const nivelIra= 10
	var property disfraces = []
	var property caramelos=0
	method capacidadSusto(){
		return nivelIra + disfraces.sum{disfraz => disfraz.nivelSusto()}
	}
	
	method disfrazar(disfraz){
		disfraces.add(disfraz)
	}
	method quitarDisfraz(disfraz){
		disfraces.remove(disfraz)
	}
	method recibirCaramelos(cantidad){
		caramelos += (cantidad*3).div(4)
	}
	method dejarDeUsarMenosEfectivo(){
		disfraces.remove(disfraces.min({disfraz => disfraz.nivelSusto()}))
	}

}

object pancracio {
	var property disfraces=[mascaraDracula]
	var grito=4 
	var property caramelos=0
	method capacidadSusto(){
		return disfraces.sum{disfraz => disfraz.nivelSusto()} + grito
	}
	
	method quitarDisfraz(disfraz){
		grito+=2
	}
	method disfrazar(disfraz){
		disfraces=[disfraz]
	}
	method recibirCaramelos(cantidad){
		caramelos += cantidad
	}
}

// El chico inventado .

object pedro {
	var property disfraces=[]
	var property caramelos=0
	method capacidadSusto(){
		return 0
		}
	method quitarDisfraz(disfraz){
		
	}
	method disfrazar(disfraz){
		disfraces.add(disfraz)
	}
	method tirarTodosLosDisfraces(){
		disfraces=[]
	}
	method recibirCaramelos(cantidad){
		
	}
}

