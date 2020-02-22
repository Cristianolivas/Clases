import java.util.Scanner;

public class CantidadCaracteres {
	public static void main (String[]args) {
		Scanner sc = new Scanner(System.in);
		System.out.println("Ingrese la cadena:");
		String  cadena = sc.nextLine();
		System.out.println("Ingrese el caracter a buscar:");
		String caracter = sc.next();
		
	
		char car = caracter.charAt(0);
		int cantidadRepeticiones = 0;
		
		for (int i=0 ;i<cadena.length(); ){
			char aux = cadena.charAt(i);
			if (aux ==car) {
				cantidadRepeticiones++;				
			}
		}
		System.out.println("La cantidad de repeticiones es:" + cantidadRepeticiones);
	
	}

}
