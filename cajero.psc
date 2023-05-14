Algoritmo cajero
	//Crear un programa que emule funcionamiento de un cajero automatico
	//Al iniciar solicitar la clave de su tarjeta y verificar que sea
	//la correcta (1234). Luego de ingresar mostrar el siguiente menu
	//1- Consultar Saldo
	//2- Extraer dinero:  El limite de extraccion es de 25000
	//3- Transferir Dinero: Solicita el nombre y CBU del destinatario
	// y el monto a transferir y muestra el siguiente mensaje
	// "Esta seguro que desea realizar esta transferencia? 1_si 2_no"
	//4- Cambiar Clave: Solicita una nueva clave de 4 digitos (es decir
	//entre 1000 y 9999) y la confirma
	//5- Salir
	
	//A fines de poder ejecutar el ejercicio se establece un saldo
	//inicial de 36899
	
	Escribir "Ingrese su clave"
	leer clave
	Mientras clave <> 1234 Hacer
		Escribir "Clave incorrecta"
		Escribir "Ingrese su clave"
		leer clave
	FinMientras
	//ya habiendo iniciado sesion, cargo el saldo
	saldo<-36899
	cambio_clave = 0
	
	Repetir
		
		Si cambio_clave = 1 Entonces
			Escribir "Usted ah cambiado su contrase?a"
			Escribir "Por Favor ingrese su nueva contrase?a"
			Leer clave_acceso
			Mientras clave_acceso <> clave Hacer
				Escribir "Usted ah cambiado su contrase?a"
				Escribir "Por Favor ingrese su nueva contrase?a"
				Leer clave_acceso
				cambio_clave = 0
			Fin Mientras
		Fin Si
		
		Escribir "1- Consultar Saldo"
		Escribir "2- Extraer dinero"
		Escribir "3- Transferir Dinero"
		Escribir "4- Cambiar Clave"
		Escribir "5- Salir"
		leer menu
		Segun menu Hacer
			1:
				Escribir "Su saldo es de $ " saldo
			2:
				Escribir "Ingrese el monto a extraer"
				leer extraccion
				
				Mientras  extraccion > 25000 o extraccion>saldo hacer
					Escribir "El monto no puede ser superior a $25000 o mayor a su saldo"
					Escribir "Ingrese el monto a extraer"
					leer extraccion					
				FinMientras
				saldo<-saldo-extraccion
				Escribir "Retire su dinero"
				
			3:
				Escribir "Ingrese el nombre del destinatario"
				leer nombre
				Escribir "Ingrese el CBU"
				leer CBU
				Escribir "Ingrese el monto a transferir"
				leer monto_transf
				Mientras monto_transf>saldo
					Escribir "Saldo insuficientes"
					Escribir "Ingrese el monto a transferir"
					leer monto_transf
				FinMientras
				Escribir "Esta seguro que desea realizar esta transferencia? 1_si 2_no"
				leer respuesta
				Si respuesta = 1 Entonces					
					Escribir "Transferencia realizada"
					saldo<-saldo- monto_transf
				SiNo
					Escribir "Operacion cancelada"
				Fin Si
				
			4:
				Escribir "Ingrese su nueva clave"
				leer clave_nueva
				Mientras clave_nueva<1000 o clave_nueva>9999 Hacer
					Escribir "Clave incorrecta, debe ser de 4 digitos"
					Escribir "Ingrese su nueva clave"
					leer clave_nueva
				FinMientras
				Escribir "Confirme su nueva clave"
				leer clave_confirmacion
				Si clave_confirmacion = clave_nueva Entonces
					clave<-clave_nueva
					Escribir "La clave se actualizo con exito"
					cambio_clave = 1
				SiNo
					Escribir "Las claves no coinciden"
				FinSi
				
			5:
				Escribir "Retire su tarjeta"
			De Otro Modo:
				Escribir "Opcion no valida"
		Fin Segun
	Hasta Que menu = 5
FinAlgoritmo