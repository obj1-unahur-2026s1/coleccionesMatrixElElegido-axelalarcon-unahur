import matrix.*

object nave {
    const pasajeros = [neo, morfeo, trinity]

    method cantidadPasajeros() = pasajeros.size()

    method maximaVitalidad() = pasajeros.max({p => p.vitalidad()})

    method estaVitalmenteEquilibrada() = pasajeros.all(
        {p => p.vitalidad() * 2 >= self.maximaVitalidad().vitalidad()}
    )
    method estaElElegido() = pasajeros.any({p => p.esElElegido()})

    method losNoElegidos() = pasajeros.filter({p => !p.esElElegido()})

    method chocar() {
        pasajeros.forEach({p => p.saltar()})
        pasajeros.clear()

        /*
            ALTERNATE VERSION:
                pasajeros.forEach({p => p.saltar() self.quitarPasajero(p)}) -> ugly af
        */
    }

    method acelerar() {
        self.losNoElegidos().forEach({p => p.saltar()})

        /*
            ALTERNATE VERSION:
                pasajeros.forEach({p => if (!p.esElElegido()) p.saltar()})
        */
    }

    method agregarPasajero(pasajero) {
        pasajeros.add(pasajero)
    }

    method quitarPasajero(pasajero) {
        pasajeros.remove(pasajero)
    }
}