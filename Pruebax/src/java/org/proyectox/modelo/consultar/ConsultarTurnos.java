/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.proyectox.modelo.consultar;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import org.proyectox.modelo.Conexion;
import org.proyectox.modelo.Sentencias;

/**
 *
 * @author julio
 */
public class ConsultarTurnos {
    public static String[] consultarturnos(int idAsunto) {
        ResultSet rs=null;
        String [] asuntos = null;
        int contar = 0;
        Statement st;
        Connection cn;
        try {
            cn = Conexion.getConexion();
            st = cn.createStatement();
            rs = st.executeQuery(Sentencias.getTurnos(idAsunto));
            while(rs.next()){
                contar++;
            }
            
            rs.beforeFirst();
            asuntos = new String[contar];
            contar = 0;
            
            while(rs.next()){
                asuntos[contar] = rs.getString(1);
                contar++;
            }
            
            rs.close();
            st.close();
            cn.close();
            
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return asuntos;
    }
}
