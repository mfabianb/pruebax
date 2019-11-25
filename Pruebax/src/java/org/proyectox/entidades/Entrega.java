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
public class Entrega {
    private int idEntrega;
    private String fecha;
    private String hora;
    private String asunto;
    private String remitente;
    private String comentario;
    private int idMensajero;
    private int idDestinatario;
    private int idRecepcionista;

    public Entrega(int idEntrega, String fecha, String hora, String asunto, String remitente, String comentario, int idMensajero, int idDestinatario, int idRecepcionista) {
        this.idEntrega = idEntrega;
        this.fecha = fecha;
        this.hora = hora;
        this.asunto = asunto;
        this.remitente = remitente;
        this.comentario = comentario;
        this.idMensajero = idMensajero;
        this.idDestinatario = idDestinatario;
        this.idRecepcionista = idRecepcionista;
    }

    public int getIdEntrega() {
        return idEntrega;
    }

    public void setIdEntrega(int idEntrega) {
        this.idEntrega = idEntrega;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getHora() {
        return hora;
    }

    public void setHora(String hora) {
        this.hora = hora;
    }

    public String getAsunto() {
        return asunto;
    }

    public void setAsunto(String asunto) {
        this.asunto = asunto;
    }

    public String getRemitente() {
        return remitente;
    }

    public void setRemitente(String remitente) {
        this.remitente = remitente;
    }

    public String getComentario() {
        return comentario;
    }

    public void setComentario(String comentario) {
        this.comentario = comentario;
    }

    public int getIdMensajero() {
        return idMensajero;
    }

    public void setIdMensajero(int idMensajero) {
        this.idMensajero = idMensajero;
    }

    public int getIdDestinatario() {
        return idDestinatario;
    }

    public void setIdDestinatario(int idDestinatario) {
        this.idDestinatario = idDestinatario;
    }

    public int getIdRecepcionista() {
        return idRecepcionista;
    }

    public void setIdRecepcionista(int idRecepcionista) {
        this.idRecepcionista = idRecepcionista;
    }
    
    
}
