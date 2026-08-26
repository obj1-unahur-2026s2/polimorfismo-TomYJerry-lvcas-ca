object tom {

   var energia = 50
   

    method velocidadMaxima(){
        return 5 + (energia/10)
    }

    method energia(){
      return energia
    }

    method estaFeliz(){
       return energia > 50
    }

    method correr(cantidadMetrosRecorridos){
        energia = energia - (cantidadMetrosRecorridos/2)
    }


    method comer(raton){
        energia = energia + 12 + raton.peso()
    }

    method puedeCazar(distancia){
       return (distancia/2) < energia
    }

    method cazar(raton, distancia){
      if(self.puedeCazar(distancia)){
         self.correr(distancia) //viaja y gasta energia
         self.comer(raton)//recupera energia
      }
    }


}

object jerry {
   var edad = 2
   method peso(){
      return edad * 20
   }

   method cumplirAnios() {
     edad = edad + 1
   }

   
}

object nibbles {
   
   method peso() {
     return 35
   }
}

object perez {
  var peso = 55

  method peso() = peso

  method comerAlpiste(){
   peso = peso + 1
  } 
}

