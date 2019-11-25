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
public class Respuesta {
    private int idRespuesta;
    private int idSolicitud;
    private String respuesta;
    private String fechaRespuesta;
    private String horaRespuesta;
    private int idDestinatario;

    public Respuesta(int idRespuesta, int idSolicitud, int idDestinatario) {
        this.idRespuesta = idRespuesta;
        this.idSolicitud = idSolicitud;
        this.idDestinatario = idDestinatario;
    }

    public Respuesta(String respuesta, String fechaRespuesta, String horaRespuesta) {
        this.respuesta = respuesta;
        this.fechaRespuesta = fechaRespuesta;
        this.horaRespuesta = horaRespuesta;
    }

    public int getIdRespuesta() {
        return idRespuesta;
    }

    public void setIdRespuesta(int idRespuesta) {
        this.idRespuesta = idRespuesta;
    }

    public int getIdSolicitud() {
        return idSolicitud;
    }

    public void setIdSolicitud(int idSolicitud) {
        this.idSolicitud = idSolicitud;
    }

    public String getRespuesta() {
        return respuesta;
    }

    public void setRespuesta(String respuesta) {
        this.respuesta = respuesta;
    }

    public String getFechaRespuesta() {
        return fechaRespuesta;
    }

    public void setFechaRespuesta(String fechaRespuesta) {
        this.fechaRespuesta = fechaRespuesta;
    }

    public String getHoraRespuesta() {
        return horaRespuesta;
    }

    public void setHoraRespuesta(String horaRespuesta) {
        this.horaRespuesta = horaRespuesta;
    }

    public int getIdDestinatario() {
        return idDestinatario;
    }

    public void setIdDestinatario(int idDestinatario) {
        this.idDestinatario = idDestinatario;
    }
    
    
}
