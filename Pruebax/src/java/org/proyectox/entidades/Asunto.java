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
public class Asunto {

    private int idAsunto;
    private String nombre;
    private String fechaInicio;
    private String horaInicio;
    private String tipoAsunto;
    private int indiceTipoAsunto;
    private String fechaFin;
    private String horaFin;
    private String fechaCancelacion;
    private String horaCancelacion;
    private String estadoAsunto;
    private int indiceEstadoAsunto;

    public Asunto(int idAsunto, String nombre, String fechaInicio,
            String horaInicio, String tipoAsunto, int indiceTipoAsunto,
            String fechaFin, String estadoAsunto, int indiceEstadoAsunto) {
        this.idAsunto = idAsunto;
        this.nombre = nombre;
        this.fechaInicio = fechaInicio;
        this.horaInicio = horaInicio;
        this.tipoAsunto = tipoAsunto;
        this.indiceTipoAsunto = indiceTipoAsunto;
        this.fechaFin = fechaFin;
        this.estadoAsunto = estadoAsunto;
        this.indiceEstadoAsunto = indiceEstadoAsunto;
    }

    public int getIdAsunto() {
        return idAsunto;
    }

    public void setIdAsunto(int idAsunto) {
        this.idAsunto = idAsunto;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getFechaInicio() {
        return fechaInicio;
    }

    public void setFechaInicio(String fechaInicio) {
        this.fechaInicio = fechaInicio;
    }

    public String getHoraInicio() {
        return horaInicio;
    }

    public void setHoraInicio(String horaInicio) {
        this.horaInicio = horaInicio;
    }

    public String getTipoAsunto() {
        return tipoAsunto;
    }

    public void setTipoAsunto(String tipoAsunto) {
        this.tipoAsunto = tipoAsunto;
    }

    public int getIndiceTipoAsunto() {
        return indiceTipoAsunto;
    }

    public void setIndiceTipoAsunto(String tipo) {
        if (tipo.equals("Interno")) {
            indiceTipoAsunto = 1;
        } else if (tipo.equals("Externo")) {
            indiceTipoAsunto = 2;
        }
    }

    public String getFechaFin() {
        return fechaFin;
    }

    public void setFechaFin(String fechaFin) {
        this.fechaFin = fechaFin;
    }

    public String getHoraFin() {
        return horaFin;
    }

    public void setHoraFin(String horaFin) {
        this.horaFin = horaFin;
    }

    public String getFechaCancelacion() {
        return fechaCancelacion;
    }

    public void setFechaCancelacion(String fechaCancelacion) {
        this.fechaCancelacion = fechaCancelacion;
    }

    public String getHoraCancelacion() {
        return horaCancelacion;
    }

    public void setHoraCancelacion(String horaCancelacion) {
        this.horaCancelacion = horaCancelacion;
    }

    public String getEstadoAsunto() {
        return estadoAsunto;
    }

    public void setEstadoAsunto(String estadoAsunto) {
        this.estadoAsunto = estadoAsunto;
    }

    public int getIndiceEstadoAsunto() {
        return indiceEstadoAsunto;
    }

    public void setIndiceEstadoAsunto(String estado) {
        if (estado.equals("En Proceso")) {
            indiceTipoAsunto = 1;
        } else if (estado.equals("Suspendido")) {
            indiceTipoAsunto = 2;
        } else if (estado.equals("Cancelado")) {
            indiceTipoAsunto = 3;
        } else if (estado.equals("Concluido")) {
            indiceTipoAsunto = 4;
        }
    }

}
