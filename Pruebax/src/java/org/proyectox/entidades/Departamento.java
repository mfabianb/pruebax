/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.proyectox.entidades;

/**
 *
 * @author julio
 */
public class Departamento {
    private int idDepto;
    private String nombre;
    private int idArea;
    
    public Departamento(int idDepto, String nombre, int idArea){
        this.idDepto = idDepto;
        this.nombre = nombre;
        this.idArea = idArea;
    }
    
    public int getIdDepto(){
        return this.idDepto;
    }

    public void setIdDepto(int idDepto) {
        this.idDepto = idDepto;
    }
    
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getIdArea() {
        return idArea;
    }

    public void setIdArea(int idArea) {
        this.idArea = idArea;
    }
}
