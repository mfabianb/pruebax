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
public class Turno{
    private int idAsunto;
    private int idUsuario;
    private String fechaPeticion;
    private String horaPeticion;
    private String indicaciones;

    public Turno(int idAsunto, int idUsuario, String fechaPeticion, String horaPeticion, String indicaciones) {
        this.idAsunto = idAsunto;
        this.idUsuario = idUsuario;
        this.fechaPeticion = fechaPeticion;
        this.horaPeticion = horaPeticion;
        this.indicaciones = indicaciones;
    }

    public int getIdAsunto() {
        return idAsunto;
    }

    public void setIdAsunto(int idAsunto) {
        this.idAsunto = idAsunto;
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public String getFechaPeticion() {
        return fechaPeticion;
    }

    public void setFechaPeticion(String fechaPeticion) {
        this.fechaPeticion = fechaPeticion;
    }

    public String getHoraPeticion() {
        return horaPeticion;
    }

    public void setHoraPeticion(String horaPeticion) {
        this.horaPeticion = horaPeticion;
    }

    public String getIndicaciones() {
        return indicaciones;
    }

    public void setIndicaciones(String indicaciones) {
        this.indicaciones = indicaciones;
    }
    
    
}
