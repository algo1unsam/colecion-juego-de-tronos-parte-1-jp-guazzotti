object daenerys{
    const property artefactos = #{} 
    var property capacidad = 2 

    method encontrar(_artefacto){
        if (artefactos.size() < capacidad)
            artefactos.add(_artefacto)
    }

    method volverAcasa(){
        castillo.agregarArtefactos()
        artefactos.clear()
    }

    method posesiones(){
        return self.artefactos() + castillo.artefactos()
    }

    method posee(_artefacto) = self.posesiones().contains(_artefacto)

}

object espada_dragon{}

object libro_magia_ancestral{}

object collar_fuego{}

object armadura{}

object castillo {
    const property artefactos = []
    
    method agregarArtefactos(){
        artefactos.addAll(daenerys.artefactos())
    }
}

object historia {

}
 // quiero aclarar que no me copie, solo use los nombres que estaban en el test jeje