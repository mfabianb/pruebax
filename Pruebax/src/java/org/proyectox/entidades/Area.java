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
public class Area {
    private int idArea;
    private String nombre;
    
    public Area(int idArea, String nombre){
        this.idArea = idArea;
        this.nombre = nombre;
    }
    
    public int getIdArea(){
        return this.idArea;
    }
    
    public String getNombreArea(){
        return this.nombre;
    }
    
    public void setIdArea(int idArea){
        this.idArea = idArea;
    }
    
    public void setNombreArea(String nombre){
        this.nombre = nombre;
    }
}
