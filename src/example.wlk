object olivia{
	
	var concentracion = 6
	
	method masaje(){
		
		concentracion += 3
	}
	
	method banioDeVapor(){}
	
	method discutir(){
		
		concentracion -= 1
	}
	
	method gradoDeConcentracion(){
		
		return concentracion
	}
}

object bruno{
	
	var feliz = true
	var sed = false
	var peso = 55000
	
	method esFeliz() = feliz
	method sed()= sed
	method peso()= peso
	
	method masaje(){		
		feliz = true
	}
	
	method banioDeVapor(){	
		peso -= 500
		sed = true
	}
	
	method tomarAgua(){
		sed = false
	}
	
	method comerFideos(){
		peso += 250
		sed = true
	}
	
	method correr(){
		peso -= 300
	}
	
	method verNoticiero(){		
		feliz = false		
	}
	
	method estaPerfecto(){
		
		return   self.esFeliz() and
			    not self.sed() and 
		 		 self.peso().between(50000,70000) 
	}
	
	method mediodiaEnCasa(){
		
		self.comerFideos() 
		self.tomarAgua()
		self.verNoticiero()
		
	}
}

object ramiro{
	
	var pielGrasosa = false
	var contractura = 0 
	
		method nivelDeContractura(){
		if (contractura > 5) return "Muy contracturado"
		else if (contractura.between(1,5)) return "Algo contracturado"
		else return "Nada contracturado"
	}	
	
	method masaje(){
		contractura = 0.max(contractura-2)
	}
	
	method banioDeVapor(){
		pielGrasosa = false
	}
	
	method comerBigMac(){
		pielGrasosa = true
	}
	
	method bajarALaFosa(){
		pielGrasosa = true
		contractura += 1
	}
	
	method jugarPaddle(){
		contractura += 3
	}
	
	method diaDeTrabajo(){
		self.bajarALaFosa()
		self.comerBigMac()
		self.bajarALaFosa()
	}
}

object spa{
	
	method atender(persona){
		
		persona.masaje()
		persona.banioDeVapor()
	}
}


