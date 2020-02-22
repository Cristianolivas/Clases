package Producto;

public class Producto {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		String nombre = "Cristian"; 
	
		System.out.println("mi nombre es " + nombre); 
		
		System.out.println("mi nombre tiene " +  nombre.length() + " Letras");
		
		System.out.println("La tercera letra de mi nombre es : " + nombre.charAt(2));
		
		int ultima_letra;
		
		ultima_letra= nombre.length();
		
		System.out.println("Y la última letra es la : " + nombre.charAt(ultima_letra -1));
		
	}

}
