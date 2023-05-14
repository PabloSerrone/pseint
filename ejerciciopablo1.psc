Algoritmo sin_titulo
	
	// Crear un programa para registrar el conteo de
	// votos en las elecciones de un municipio.
	
	//El programa iniciara registrando los votos mediante el siguiente menu:
	//1- Voto Partido Rojo
	//2- Voto Partido Azul
	//3- Voto Partido Amarillo
	//4- Voto en blanco
	//5- Anular voto
	//0- Fin de la carga
	
	//Luego de finalizada la carga de los votos saldra el siguiente menu:
	//1- Resultados : Se muestra el total de votos, y de cada partido la 
	//cantidad de votos y el porcentaje obtenido
	//Aclaracion: los votos anulados no se computan, los en blanco si
	//2- Mostrar Ganador: Se analizara cual es el partido con mas votos 
	//y se mostrara un mensaje.
	//Aclaracion: No puede ganar el voto en blanco y los votos anulados 
	//no son tenidos en cuenta
	//0- Salir
	
	
	
	Votorojo=0
	votoazul=0
	votoamarillo=0
	votoblanco=0
	votonulo=0
	porcenVotosRojos=0
	porcenVotosAzul=0
	porcenVotosAmarillo=0
	porcenVotosBlancos=0
	votos=0
		
	
	
	Repetir
		Escribir "Menu de votaciones: "
		Escribir "1- Votar partido rojo"
		Escribir "2- Votar partido azul "
		Escribir "3- Votar partido amarillo "
		Escribir "4- voto en blanco"
		Escribir "5- anular voto"
		Escribir "6- finalizar"
		Leer menu
		Segun menu Hacer
			1:
				Votorojo=Votorojo+1
			2:
				votoazul=votoazul+1
			3:
				votoamarillo=votoamarillo+1
			4:
				votoblanco=votoblanco+1
			5:
				votonulo=votonulo+1
			6:
				Escribir "gracias por votar"
			De Otro Modo:
				Escribir "Opcion fuera de parametros"
		Fin Segun
		Hasta Que menu =6
		votos=Votorojo+votoamarillo+votoazul+votoblanco
		porcenVotosRojos= Votorojo*100/votos
		porcenVotosAzul=votoazul*100/votos
		porcenVotosAmarillo=votoamarillo*100/votos
		porcenVotosBlancos=votoblanco*100/votos
		Repetir
			Escribir "1- Resultados:  "
			Escribir "2- Ganador:   "
			Escribir "0- salir"
			
			Leer menuone
			Segun menuone Hacer
				1:
					Escribir "La cantidad de votos es:  " , votos
					Escribir "El equipo rojo obtuvo un total de:  ", Votorojo, "  votos"
					Escribir "El porcentaje de los votos rojos es: ", porcenVotosRojos,"  %"
					Escribir "El equipo azual obtuvo un total de:  ", votoazul, "  votos"
					Escribir "El porcentaje de los votos azul es: ", porcenVotosAzul, "  %"
					Escribir "El equipo amarillo obtuvo un total de:  ", votoamarillo, "  votos"
					Escribir "El porcentaje de los votos amarillo es: ", porcenVotosAmarillo, "  %"
					Escribir "El equipo amarillo obtuvo un total de:  ", votoblanco, "  votos"
					Escribir "El porcentaje de los votos blanco ", porcenVotosBlancos, "  %"
				2:
					si Votorojo > votoazul y Votorojo> votoamarillo	 Entonces
						Escribir "El ganador es el partido rojo "
					FinSi
					Si votoazul > Votorojo y votoazul > votoamarillo Entonces
						Escribir "El ganador es el partido azul "
					FinSi
					Si votoamarillo > votoazul y votoamarillo > Votorojo Entonces
						Escribir "El ganador es el partido amarillo "
					FinSi
				0: 
					escribir "Salir"
				De Otro Modo:
					Escribir "Opcion fuera de los parametros"
			Fin Segun
		Hasta Que menuone=0
		
	
	
FinAlgoritmo
