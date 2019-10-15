import hector.*
import cultivos.*
import wollok.game.*
import oso.*
import direcciones.*

object juegoGranja{
	var personajeActual=hector
	
	method configurarTeclado(){
		keyboard.s().onPressDo({game.say(hector,hola gente)})
.
 	    keyboard.m().onPressDo({hector.plantarMaiz()})

 		keyboard.t().onPressDo({hector.plantarTrigo()})
	
		keyboard.o().onPressDo({hector.plantarTomate()})
		
		
		keyboard.r().onPressDo({hector.regarPlanta()})
		keyboard.c().onPressDo({hector.cosecharPlanta()})
		keyboard.p().onPressDo({game.say(hector,tengo Cosechadas + hector.cantidadDePlantasCosechadas()+plantas)})
		keyboard.q().onPressDo({game.say(hector,colliders+hector.estanEnLaMismaPosicion() )})
	
	keyboard.o().onPressDo({hector.position(new Position(x=0,y=0))})
		self.configurarMovimientos()	
	}
}	
	method configurarMovimientos(){
		
		keyboard.up().onPressDo({
			if(personajeActual.position().y() game.height()-1){
				personajeActual.position(personajeActual.position().up(1))}
				})
	    keyboard.down().onPressDo({
			if(personajeActual.position().y()0){
				personajeActual.position(personajeActual.position().down(1))}
				})	
		keyboard.left().onPressDo({
			if(personajeActual.position().y()0){
				personajeActual.position(personajeActual.position().left(1))}
				})		
		keyboard.right().onPressDo({
			if(personajeActual.position().y()game.width()-1){
				personajeActual.position(personajeActual.position().right(1))}
				})								
	}
	

	method configurarPersonajes(){
		game.addVisual(hector)
	
	
		game.addVisual(oso)
	}
	method configurarColisiones(){
	 game.whenCollideDo(oso, { objeto = objeto.teChocoElOso() })
	 }
  
  
   method configurarAcciones(){
    game.onTick(1000,movimientoOso,{oso.moverEnDireccion(este)})}
   
   
   	}  