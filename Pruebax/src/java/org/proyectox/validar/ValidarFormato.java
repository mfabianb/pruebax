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

    public static boolean esAlfaEspacio(String cadena) {
        boolean validado;
        try {
            if (!(cadena.equals(""))) {//sí no está vacío
                for (int i = 0; i != cadena.length(); i++) {
                    if (cadena.charAt(i) == (char) 34 || cadena.charAt(i) == (char) 39 || cadena.charAt(i) == (char) 96 || cadena.charAt(i) == (char) 42) {
                        break;
                    }
                }
                validado = cadena.matches("[a-zA-ZáéíóúÁÉÍÓÚñÑ!#$%\\s]+");
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
    
    public static boolean esFecha(String cadena){
        return cadena.matches("^\\d{4}([\\-/.])(0?[1-9]|1[1-2])\\1(3[01]|[12][0-9]|0?[1-9])$");
    }

    public static boolean datosValidos(boolean datos[]) {
        boolean validos = true;
        for (int i = 0; i < datos.length; i++){
            if (!datos[i]) {
                validos = false;
                break;
            }
        }
        return validos;
    }

    public static boolean validarLogin(String datos[]) {
        boolean vdatos[] = new boolean[2];
        vdatos[0] = esCorreo(datos[0]);
        vdatos[1] = esAlfanumericoEspacio(datos[1]);
        return datosValidos(vdatos);
    }

    public static boolean validarRegistroMensajeros(String datos[]) {
        boolean vdatos[] = new boolean[4];
        vdatos[0] = esAlfaEspacio(datos[0]);
        vdatos[1] = esAlfanumericoEspacio(datos[1]);
        vdatos[2] = esAlfanumericoEspacio(datos[2]);
        vdatos[3] = esAlfanumericoEspacio(datos[3]);
        return datosValidos(vdatos);
    }

    public static boolean validarCrearNuevoAsunto(String datos[]) {
        boolean vdatos[] = new boolean[3];
        vdatos[0] = esAlfanumericoEspacio(datos[0]);
        vdatos[1] = esFecha(datos[1]);
        vdatos[2] = esNumerico(datos[2]);
        return datosValidos(vdatos);
    }
}
