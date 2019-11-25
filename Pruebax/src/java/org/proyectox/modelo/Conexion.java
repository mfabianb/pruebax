package org.proyectox.modelo;

/*
 *      Autor: mfab
 *  Documento: Conexion
 *  Creado el: Mar 26, 2019, 9:08:57 PM
 *   Proyecto: Mueve tus Manos
 */


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {

    public static Connection getConexion() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String server = "localhost";
            String port = "3306";
            String dbname = "Asuntos_GUM";
            String user = "root";
            String pass = "root";
            String url = "jdbc:mysql://" + server + ":" + port + "/" + dbname + "?characterEncoding=latin1";
            return DriverManager.getConnection(url, user, pass);
        } catch (SQLException | ClassNotFoundException ex) {
            ex.printStackTrace();
            return null;
        }
    }
}
