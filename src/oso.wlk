import wollok.game.*
import direcciones.*

object oso {
	var property position = new Position(x = 3, y = 7)
	
	method image() = "oso.png"

	method mover(direccion){
		position=direccion.siguientePosicion(position)
	}
    method moverALaIzquierda(){
    	if(position.x()>0){
    		position=position.left(1)
    	}
    }
    method moverHaciaArriba(){
    	if(position.y()<game.height()-1){
    		position=position.up(1)
    	}
    }		
    method moveteAlAzar(){
    	
    	var dado=1.randomUpTo(5).truncate(0)
    	if(dado==1){self.moverALaIzquierda()}
    	if(dado==2){self.moverHaciaArriba()}
    }
    method moverEnDireccion(direccion){
    	position=direccion.siguientePosicion(position)
    }
    
}
