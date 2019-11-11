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
import org.proyectox.entidades.Usuario;
import org.proyectox.modelo.Conexion;
import org.proyectox.modelo.Sentencias;

/**
 *
 * @author mfab
 */
public class ConsultarUsuario {
    public static Usuario consultarUnUsuario(String usuarioLogin, String passwordLogin) {
        Usuario usuario = null;
        ResultSet rs;
        Statement st;
        Connection cn;
        try {
            cn = Conexion.getConexion();
            st = cn.createStatement();
            rs = st.executeQuery(Sentencias.getIiniciarSesion(usuarioLogin, passwordLogin));
            
            if (rs.next()) {
                usuario = new Usuario(rs.getString("usuario.usuariocol"), 
                        rs.getString("usuario.email"));
            }
            rs.close();
            st.close();
            cn.close();
        } catch (SQLException e) {
        }
        return usuario;
    }
}
