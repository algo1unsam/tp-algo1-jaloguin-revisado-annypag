import chicos.*
import legion.*
import elementos.*

object mirca {
	var property tolerancia = 22
	method serAsustadoPor(chico){
		if (tolerancia< chico.capacidadSusto()){
			chico.recibirCaramelos(self.caramelosAEntregar(chico))
		}
		tolerancia-=1
	}
	method caramelosAEntregar(chico){
		return if (tolerancia< chico.capacidadSusto()){
			chico.capacidadSusto() -tolerancia
		}
		else 0
	}
		
}
