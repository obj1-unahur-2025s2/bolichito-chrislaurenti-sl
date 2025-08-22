import objetos.* 
import personas.*

object bolichito {
  var objetoEnElMostrador = pelota
  var objetoEnLaVidriera = remera

    method cambiarObjetoDelMostrador(unObjeto) {
      objetoEnElMostrador = unObjeto
    }

    method cambiarUnObjetoDeLaVidriera(unObjeto) {
      objetoEnLaVidriera = unObjeto
    }

    method esBrillante() {
      return objetoEnElMostrador.material().esBrillante() &&
       objetoEnLaVidriera.material().esBrillante()
    }

    method esMonocromatico() {
      return objetoEnElMostrador.color() == objetoEnLaVidriera.color()
    }

    method estaEquilibrado() {
      return objetoEnElMostrador.peso() > objetoEnLaVidriera.peso()
    }

    method hayObjetoExhibidoDeColor_(unColor){
      return ( (objetoEnElMostrador.color() == unColor) || (objetoEnLaVidriera.color() == unColor))
    }

/*DUDA:
El metodo puede mejorar, refiere al objeto con l mismo color? Al hablar de EXHIBIDO, refiere solo
al de la vidriera o a ambos?
*/
    method puedeMejorar(){
      return ( not self.estaEquilibrado() ||
       self.esMonocromatico() )
    }

    /*
    Yo puse BOLICHITO pero el vsc me sugirió cambiarlo por "self"
    Lo cambie y funciono pero no entendi que significa
*/

method puedeOfrecerleAlgoA_(unaPersona){
  return unaPersona.leGusta(objetoEnElMostrador) || unaPersona.leGusta(objetoEnLaVidriera)
} 

}