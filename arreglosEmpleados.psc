Algoritmo arreglosEmpleados
	//Crear un programa que permita registrar los nombres 
	// y sueldos de 6 empleados
	//Luego de cargar el ultimo, mostrar el siguiente menu
	//1- Mostrar empleados (muestra todos los datos)
	//2- Mostrar total a pagar y sueldo promedio 
	//3- Mostrar el sueldo mas alto
	//4- Remplazar un empleado (permite cargar el nombre 
	// y sueldo de uno de los empleados)
	//5- Aumentar sueldos (permite ingresar un porcentaje 
	// y actualiza todos los sueldos)
	//0- Salir
	
	//Para este ejercicio necesito 2 arreglos, uno para guardar
	//los nombres  y otro para guardar los sueldos
	Dimension nombres[6]
	Dimension sueldos[6]
	
	
	Para i<-1 Hasta 6 Con Paso 1 Hacer
		Escribir "Ingrese el nombre"
		leer nombres[i]
		Escribir "Ingrese el sueldo"
		leer sueldos[i]
		
	Fin Para
	
	Repetir
		Escribir "1- Mostrar empleados"
		Escribir "2- Mostrar total a pagar y sueldo promedio" 
		Escribir "3- Mostrar el sueldo mas alto"
		Escribir "4- Remplazar un empleado"
		Escribir "5- Aumentar sueldos"
		Escribir "0- Salir" 
		leer menu
		Segun menu Hacer
			1:
				Escribir "Los empleados son"
				Para i<-1 Hasta 6 Con Paso 1 Hacer
					Escribir nombres[i] "- $ " sueldos[i]
 				Fin Para
			2:
				total_sueldos<-0
				Para i<-1 Hasta 6 Con Paso 1 Hacer
					total_sueldos<-total_sueldos + sueldos[i]
				Fin Para
				Escribir "Total pagado en sueldos: $ " total_sueldos
				sueldo_promedio<-total_sueldos/6
				Escribir "Sueldo Promedio: $ " sueldo_promedio
			3:
				sueldo_alto<-0
				Para i<-1 Hasta 6 Con Paso 1 Hacer
					Si sueldos[i]>sueldo_alto Entonces
						sueldo_alto<-sueldos[i]
					Fin Si
				Fin Para
				Escribir "Sueldo mas alto: $ " sueldo_alto
			4:
				Escribir "Indique el numero de empleado a remplazar?"
				Para i<-1 Hasta 6 Con Paso 1 Hacer
					Escribir i "- " nombres[i]
 				Fin Para
				leer nro_empleado
				Mientras nro_empleado<1 o nro_empleado>6 Hacer
					Escribir "Nro de empleado no valido"
					Escribir "Indique el numero de empleado a remplazar?"
					Para i<-1 Hasta 6 Con Paso 1 Hacer
						Escribir i "- " nombres[i]
					Fin Para
					leer nro_empleado
				Fin Mientras
				//solicitamos el nuevo nombre
				Escribir "Ingrese el nombre del nuevo empleado"
				leer nombres[nro_empleado]
				Escribir "Ingrese el sueldo"
				leer sueldos[nro_empleado]
			5:
				Escribir "Indique en que porcentaje desea aumentar el sueldo"
				leer porcentaje
				Para i<-1 Hasta 6 Con Paso 1 Hacer
					aumento<- sueldos[i] * porcentaje / 100
					sueldos[i]<- sueldos[i] + aumento
				Fin Para
				Escribir "Sueldos Actualizados"
			0:
				Escribir "Gracias"
			De Otro Modo:
				Escribir "Opcion no valida"
		Fin Segun
	Hasta Que menu = 0
FinAlgoritmo