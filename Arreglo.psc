Algoritmo arreglo
	
	definir cantidadmuestras como entero;
	Escribir "Cuantas muestras desea trabajar?";
	leer cantidadmuestras;
	
	Definir edades como entero; 
	dimension edades[cantidadmuestras,2];
	definir i como entero;
	
	para i <- 0 hasta cantidadmuestras-1 hacer
		Escribir "Ingrese edad de muestra:"; 
		leer  edades[i,0];
		Escribir "Ingresa la cantidad de personas con esa edad:";
		leer edades[i,1];
	FinPara
	
	Escribir "Estas son las muestras que ingresaste:";
	//muestra el contenido del arreglo
	Para i<- 0 hasta cantidadmuestras-1 hacer 
		escribir "- De ", edades[i,0], "hay", edades[i,1], "personas";
	FinPara
	
	//contamos la cantidad de genete que fue incluida en la muestra
	definir cantidad como entero;
	cantidad <-0;
	para i<-0 hasta cantidadmuestras-1 Hacer
		cantidad <- cantidad + edades [i,1];
	FinPara
	
	
	Escribir " Tomaste la muestra a ", cantidad, " personas";
FinAlgoritmo

