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
    
    method pasajerosValiosos() = pasajeros.filter({p => p.vitalidad() > 5})

    method hayPasajeroAlHorno() = pasajeros.any({p => p.vitalidad() == 0})

    method pasajerosPuedenEnfrentarAgente() = pasajeros.all({p => p.vitalidad() > 2})

    method vitalidadPromedio() = pasajeros.average({p => p.vitalidad()})

    method cantidadDeVitalidadesPares() = pasajeros.count({p => p.vitalidad().even()})

    method vitalidades() = pasajeros.map({p => p.vitalidad()})

    method ordenarAscendente() = pasajeros.sortBy({p1, p2 => p1.vitalidad() > p2.vitalidad()})
    
    method elegirConserje() = pasajeros.anyOne()

    method cantidadElejidos() = pasajeros.count({p => p.esElElegido()})

    // wtf is this syntax
    method potencialVital() = self.vitalidades().fold(1, {prod, p => prod * p})
    /*
        this is legal too:
            var potencia = 1
            pasajeros.forEach({p => potencia *= p.vitalidad()})
            return potencia
    */

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

    method simularCombate() {
        pasajeros.forEach({p => self.saltarPasajero3Veces(p)})
    }

    // are you for real man
    method saltarPasajero3Veces(pasajero) {
        pasajero.saltar()
        pasajero.saltar()
        pasajero.saltar()
    }

    method agregarPasajero(pasajero) {
        pasajeros.add(pasajero)
    }

    method quitarPasajero(pasajero) {
        pasajeros.remove(pasajero)
    }
}