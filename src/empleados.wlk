object gimenez {

	var property sueldo = 15000
	var property dinero = 0

	method sueldo() {
		return sueldo
	}

	method sueldo(nuevoValor) {
		sueldo = nuevoValor
	}

	method cobrarSueldo() {
		dinero += sueldo
		return dinero
	}

}

object baigorria {

	var cantidadEmpanadasVendidas = 1000
	var montoPorEmpanada = 15
	var dinero = 0
	var deuda = 0

	method venderEmpanada(cant) {
		cantidadEmpanadasVendidas += cant
	}

	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada

	method cobrarSueldo() {
		dinero = self.sueldo()
		if (dinero >= deuda) {
			dinero = dinero - deuda
			deuda = 0
		} else {
			deuda = deuda - dinero
			dinero = 0
		}
	}

	method gastar(cuanto) {
		if (dinero >= cuanto) {
			dinero -= cuanto
		} else {
			// por que resta dinero acá?
			// ya sabemos que el dinero no le alcanza para pagar lo que quiere gastar
			// por lo tanto, sólamente sumaría deuda
			deuda += cuanto - dinero
			dinero = 0
		}
	}

	method totaldeuda() {
		return deuda
	}

	method totaldinero() {
		return dinero
	}

}

object galvan {

	var dinero = 300000

	method dinero() {
		return dinero
	}

	method pagarA(empleado) {
		dinero -= empleado.sueldo()
		empleado.cobrarSueldo()
	}

}

