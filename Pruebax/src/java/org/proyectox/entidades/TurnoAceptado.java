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
public class TurnoAceptado extends Turno{
    private int idAsunto = super.getIdAsunto();
    private int idUsuario = super.getIdUsuario();
    private String fechaAceptacion;
    private String horaAceptacion;

    public TurnoAceptado(String fechaAceptacion, String horaAceptacion, int idAsunto, int idUsuario, String fechaPeticion, String horaPeticion, String indicaciones) {
        super(idAsunto, idUsuario, fechaPeticion, horaPeticion, indicaciones);
        this.fechaAceptacion = fechaAceptacion;
        this.horaAceptacion = horaAceptacion;
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

    public String getFechaAceptacion() {
        return fechaAceptacion;
    }

    public void setFechaAceptacion(String fechaAceptacion) {
        this.fechaAceptacion = fechaAceptacion;
    }

    public String getHoraAceptacion() {
        return horaAceptacion;
    }

    public void setHoraAceptacion(String horaAceptacion) {
        this.horaAceptacion = horaAceptacion;
    }
    
    
}
