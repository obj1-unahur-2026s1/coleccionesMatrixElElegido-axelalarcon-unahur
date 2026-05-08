object neo {
    var energia = 100

    method vitalidad() = energia * 0.1
    method esElElegido() = true

    method saltar() {
        energia /= 2
    }
}

object morfeo {
    var estaCansado = true
    var vitalidad = 8

    method vitalidad() = vitalidad
    method esElElegido() = false

    method saltar() {
        vitalidad -= 1
        estaCansado = !estaCansado
    }
}

object trinity {
    method vitalidad() = 0
    method esElElegido() = false

    method saltar() {

    }
}

