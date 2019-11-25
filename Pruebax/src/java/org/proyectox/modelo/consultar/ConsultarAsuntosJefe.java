/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.proyectox.modelo.consultar;

import java.sql.Array;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import org.apache.tomcat.util.threads.ResizableExecutor;
import org.proyectox.entidades.Usuario;
import org.proyectox.modelo.Conexion;
import org.proyectox.modelo.Sentencias;

/**
 *
 * @author julio
 */
public class ConsultarAsuntosJefe {
    public static String[][] consultarAsuntosJefe(int idJefe) {
        ResultSet rs=null;
        String [][] asuntos = null;
        int contar = 0;
        Statement st;
        Connection cn;
        try {
            cn = Conexion.getConexion();
            st = cn.createStatement();
            rs = st.executeQuery(Sentencias.getAsuntosJefe(idJefe));
            while(rs.next()){
                contar++;
            }
            
            rs.beforeFirst();
            asuntos = new String[contar][2];
            contar = 0;
            
            while(rs.next()){
                asuntos[contar][0] = rs.getString("idasunto");
                asuntos[contar][1] = rs.getString("nombre");
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
