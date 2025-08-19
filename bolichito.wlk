import objetos.*

object bolichito {
  var objetoEnElMostrador = remera
  var objetoEnLaVidriera = placa

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

}