Proceso nxm
	
	Definir filas como entero;
	Definir columnas como entero;
	
	Escribir "Cuantas filas:";
	Leer filas;
	Escribir "Cuantas columnas";
	Leer columnas;
	
	Definir matriz Como Entero;
	Dimension matriz[filas, columnas];
	
	definir i, j Como Entero;
	
	para i <-0 hasta filas-1 Hacer
		Para j <-0 hasta columnas -1 Hacer
			matriz[i,j] <- azar(89)+10;
		FinPara
	FinPara
	
	muestramatriz(matriz, filas, columnas); 
	definir total como entero;
	total <- sumanumeros(matriz, filas , columnas);
	
	Escribir "La suma de los numeros de la matriz es:", total;
	
	FinProceso

	SubAlgoritmo val <- sumanumeros(maxi, fili, coli)
		definir i, j como entero; 
		definir val como entero; 
		val <-0;
		Para i <-0 hasta fili - 1 hacer 
			para j <-0 hasta coli -1 hacer
				val <- val + maxi [i,j]; 
			FinPara
		FinPara
FinSubAlgoritmo
	
	
	
	
SubAlgoritmo muestramatriz(max, fil, col)
	definir x, z como entero;
	para x<-0 hasta fil -1 hacer
		para z<-0 hasta col -1 hacer	
			escribir sin saltar "[", max[x,z], "]";
		FinPara
		Escribir "";	
	FinPara
	
FinSubAlgoritmo
	