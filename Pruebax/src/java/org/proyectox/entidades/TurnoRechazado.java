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
public class TurnoRechazado extends Turno{
    private int idAsunto = super.getIdAsunto();
    private int idUsuario = super.getIdUsuario();
    private String fechaRechazo;
    private String horaRechazo;
    private String justificacion;

    public TurnoRechazado(String fechaRechazo, String horaRechazo, String justificacion, int idAsunto, int idUsuario, String fechaPeticion, String horaPeticion, String indicaciones) {
        super(idAsunto, idUsuario, fechaPeticion, horaPeticion, indicaciones);
        this.fechaRechazo = fechaRechazo;
        this.horaRechazo = horaRechazo;
        this.justificacion = justificacion;
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

    public String getFechaRechazo() {
        return fechaRechazo;
    }

    public void setFechaRechazo(String fechaRechazo) {
        this.fechaRechazo = fechaRechazo;
    }

    public String getHoraRechazo() {
        return horaRechazo;
    }

    public void setHoraRechazo(String horaRechazo) {
        this.horaRechazo = horaRechazo;
    }

    public String getJustificacion() {
        return justificacion;
    }

    public void setJustificacion(String justificacion) {
        this.justificacion = justificacion;
    }
    
    
}
