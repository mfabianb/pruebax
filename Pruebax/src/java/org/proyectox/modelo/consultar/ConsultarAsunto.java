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
public class ConsultarAsunto {
    public static String[] consultarAsunto(int idAsunto) {
        ResultSet rs=null;
        String [] asuntos = null;
        int contar = 0;
        Statement st;
        Connection cn;
        try {
            cn = Conexion.getConexion();
            st = cn.createStatement();
            rs = st.executeQuery(Sentencias.getAsunto(idAsunto));
            if(rs.next()){
                contar++;
            }
            
            rs.beforeFirst();
            asuntos = new String[14];
            
            if(rs.next()){
                asuntos[0] = rs.getString(1);
                asuntos[1] = rs.getString(2);
                asuntos[2] = rs.getString(3);
                asuntos[3] = rs.getString(4);
                asuntos[4] = rs.getString(5);
                asuntos[5] = rs.getString(6);
                asuntos[6] = rs.getString(7);
                asuntos[7] = rs.getString(8);
                asuntos[8] = rs.getString(9);
                asuntos[9] = rs.getString(10);
                asuntos[10] = rs.getString(11);
                asuntos[11] = rs.getString(12);
                asuntos[12] = rs.getString(13);
                asuntos[13] = rs.getString(14);
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
