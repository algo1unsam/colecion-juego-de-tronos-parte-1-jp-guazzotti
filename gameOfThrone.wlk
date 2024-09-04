object daenerys{
    const property artefactos = #{} 
    var property capacidad = 2 
    const property historia = []

    method encontrar(_artefacto){
        historia.add(_artefacto)
        if (artefactos.size() < capacidad)
            artefactos.add(_artefacto)
    }

    method volverAcasa(){
        castillo.agregarArtefactos(self.artefactos())
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
    
    method agregarArtefactos(_artefactos){
        artefactos.add(_artefactos)
        //artefactos.addAll(daenerys.artefactos())
    }
}

 // quiero aclarar que no me copie, solo use los nombres que estaban en el test jeje