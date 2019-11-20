/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.proyectox.entidades;

/**
 *
 * @author mfab
 */
public class Usuario {

    private int idUsuario;
    private String nombre;
    private String email;
    private String password;
    private String tipoUsuario;
    private int indiceTipoUsuario;

    public Usuario(String nombre, String email) {
        this.nombre = nombre;
        this.email = email;
    }

    public Usuario(String nombre, String email, String tipoUsuario) {
        this.nombre = nombre;
        this.email = email;
        this.tipoUsuario = tipoUsuario;
    }

    public Usuario(int idUsuario, String nombre, String email, String tipoUsuario) {
        this.idUsuario = idUsuario;
        this.nombre = nombre;
        this.email = email;
        this.tipoUsuario = tipoUsuario;
    }

    public Usuario(int idUsuario, String nombre, String email, String password, String tipoUsuario) {
        this.idUsuario = idUsuario;
        this.nombre = nombre;
        this.email = email;
        this.password = password;
        this.tipoUsuario = tipoUsuario;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getTipoUsuario() {
        return tipoUsuario;
    }

    public void setTipoUsuario(String tipoUsuario) {
        this.tipoUsuario = tipoUsuario;
    }

    public int getIdUsuario() {
        return idUsuario;
        
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public int getIndiceTipoUsuario() {
        return indiceTipoUsuario;
    }

    public void setIndiceTipoUsuario(String tipoUsuario) {
        if (tipoUsuario.equals("Admin")) {
            indiceTipoUsuario = 1;
        } else if (tipoUsuario.equals("JefeA")) {
            indiceTipoUsuario = 2;
        } else if (tipoUsuario.equals("JefeD")) {
            indiceTipoUsuario = 3;
        } else if (tipoUsuario.equals("Recepcionista")) {
            indiceTipoUsuario = 4;
        } else if (tipoUsuario.equals("Empleado")) {
            indiceTipoUsuario = 5;
        } else if (tipoUsuario.equals("Supervisor")) {
            indiceTipoUsuario = 6;
        }
    }

}
