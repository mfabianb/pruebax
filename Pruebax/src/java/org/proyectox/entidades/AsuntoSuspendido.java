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
public class AsuntoSuspendido extends Asunto{
    private int idAsunto = super.getIdAsunto();
    private String fechaSuspension;
    private String horaSuspension;
    private String fechaActivacion;
    private String horaActivacion;

    public AsuntoSuspendido(String fechaSuspension, String horaSuspension, String fechaActivacion, String horaActivacion, int idAsunto, String nombre, String fechaInicio, String horaInicio, String tipoAsunto, int indiceTipoAsunto, String fechaFin, String estadoAsunto, int indiceEstadoAsunto) {
        super(idAsunto, nombre, fechaInicio, horaInicio, tipoAsunto, indiceTipoAsunto, fechaFin, estadoAsunto, indiceEstadoAsunto);
        this.fechaSuspension = fechaSuspension;
        this.horaSuspension = horaSuspension;
        this.fechaActivacion = fechaActivacion;
        this.horaActivacion = horaActivacion;
    }
    
    

    public int getIdAsunto() {
        return idAsunto;
    }

    public void setIdAsunto(int idAsunto) {
        this.idAsunto = idAsunto;
    }
    
    

    public String getFechaSuspension() {
        return fechaSuspension;
    }

    public void setFechaSuspension(String fechaSuspension) {
        this.fechaSuspension = fechaSuspension;
    }

    public String getHoraSuspension() {
        return horaSuspension;
    }

    public void setHoraSuspension(String horaSuspension) {
        this.horaSuspension = horaSuspension;
    }

    public String getFechaActivacion() {
        return fechaActivacion;
    }

    public void setFechaActivacion(String fechaActivacion) {
        this.fechaActivacion = fechaActivacion;
    }

    public String getHoraActivacion() {
        return horaActivacion;
    }

    public void setHoraActivacion(String horaActivacion) {
        this.horaActivacion = horaActivacion;
    }
    
    
    
}
