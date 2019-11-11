package org.proyectox.validar;

/**
 *
 * @author mfab
 */
public class ValidarFormato {

    //!Función para validar que una cadena sólo contenga carácteres alfanuméricos
    /*
    \param cadena is an String argument
    \return validado results
     */
    public static boolean esAlfanumerico(String cadena) {
        boolean validado;
        try {
            if (!(cadena.equals(""))) {//sí no está vacío
                for (int i = 0; i != cadena.length(); i++) {
                    if (cadena.charAt(i) == (char) 34 || cadena.charAt(i) == (char) 39 || cadena.charAt(i) == (char) 96 || cadena.charAt(i) == (char) 42) {
                        break;
                    }
                }
                validado = cadena.matches("[a-zA-Z0-9áéíóúÁÉÍÓÚ!#$%ñÑ]+");
            } else {
                validado = false;
            }
        } catch (Exception e) {
            validado = false;
        }
        return validado;
    }

    public static boolean esAlfanumericoEspacio(String cadena) {
        boolean validado;
        try {
            if (!(cadena.equals(""))) {//sí no está vacío
                for (int i = 0; i != cadena.length(); i++) {
                    if (cadena.charAt(i) == (char) 34 || cadena.charAt(i) == (char) 39 || cadena.charAt(i) == (char) 96 || cadena.charAt(i) == (char) 42) {
                        break;
                    }
                }
                validado = cadena.matches("[a-zA-Z0-9áéíóúÁÉÍÓÚñÑ!#$%\\s]+");
            } else {
                validado = false;
            }
        } catch (Exception e) {
            validado = false;
        }
        return validado;
    }

    public static boolean esNumerico(String cadena) {
        boolean validado;
        try {
            Integer.parseInt(cadena);
            validado = true;
        } catch (NumberFormatException e) {
            validado = false;
        }
        return validado;
    }

    public static boolean estaEnRango(int ri, int rs, int n) {
        boolean validado;
        validado = (n > ri && n < rs);
        return validado;
    }

    public static boolean estaEnRango(int ri, int rs, String n) {
        boolean validado;
        int x;
        if (esNumerico(n)) {
            x = Integer.parseInt(n);
            validado = (x > ri && x < rs);
        } else {
            validado = false;
        }
        return validado;
    }

    public static boolean esDireccionURL(String cadena) {
        return cadena.matches("^https?:\\/\\/[\\w\\-]+(\\.[\\w\\-]+)+[/#?]?.*$");
    }

    public static boolean esCorreo(String cadena) {
        return cadena.matches("^[\\w-\\.]+@([\\w-]+\\.)+[\\w-]{2,4}$");
    }
    
}
