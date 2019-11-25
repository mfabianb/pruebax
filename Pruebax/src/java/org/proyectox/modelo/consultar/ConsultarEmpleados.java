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
public class ConsultarEmpleados {
    public static String[][] consultarEmpleados() {
        ResultSet rs=null;
        String [][] asuntos = null;
        int contar = 0;
        Statement st;
        Connection cn;
        try {
            cn = Conexion.getConexion();
            st = cn.createStatement();
            rs = st.executeQuery(Sentencias.getEmpleados());
            while(rs.next()){
                contar++;
            }
            rs.beforeFirst();
            asuntos = new String[contar][5];
            contar = 0;
            
            while(rs.next()){
                asuntos[contar][0] = rs.getString(1);
                asuntos[contar][1] = rs.getString(2);
                asuntos[contar][2] = rs.getString(3);
                asuntos[contar][3] = rs.getString(4);
                asuntos[contar][4] = rs.getString(5);
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
