/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.proyectox.modelo.insertar;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import org.proyectox.modelo.Conexion;
import org.proyectox.modelo.Sentencias;

/**
 *
 * @author julio
 */
public class insertarJefeArea {
    public static boolean insertarJefeArea(int idJefe, int idArea) {
        Connection cn;
        Statement st;
        try {
            cn = Conexion.getConexion();
            st = cn.createStatement();
            st.executeUpdate(Sentencias.insertarUsuarioDepto(idJefe, idArea));
            st.close();
            cn.close();
            return true;
        } catch (SQLException e) {
            return false;
        }
    }
}
