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
public class Mensajero {

    private int idMensajero;
    private String nombre;
    private String procedencia;
    private String destino;
    private String identificacion;
    private String entrada;
    private String salida;
    private String tipoID;
    private int indiceTipoID;

    public Mensajero(int idMensajero, String nombre, String procedencia,
            String destino, String identificacion, String entrada,
            String tipoID, int indiceTipoID) {
        this.idMensajero = idMensajero;
        this.nombre = nombre;
        this.procedencia = procedencia;
        this.destino = destino;
        this.identificacion = identificacion;
        this.entrada = entrada;
        this.tipoID = tipoID;
        this.indiceTipoID = indiceTipoID;
    }

    public int getIdMensajero() {
        return idMensajero;
    }

    public void setIdMensajero(int idMensajero) {
        this.idMensajero = idMensajero;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getProcedencia() {
        return procedencia;
    }

    public void setProcedencia(String procedencia) {
        this.procedencia = procedencia;
    }

    public String getDestino() {
        return destino;
    }

    public void setDestino(String destino) {
        this.destino = destino;
    }

    public String getIdentificacion() {
        return identificacion;
    }

    public void setIdentificacion(String identificacion) {
        this.identificacion = identificacion;
    }

    public String getEntrada() {
        return entrada;
    }

    public void setEntrada(String entrada) {
        this.entrada = entrada;
    }

    public String getSalida() {
        return salida;
    }

    public void setSalida(String salida) {
        this.salida = salida;
    }

    public String getTipoID() {
        return tipoID;
    }

    public void setTipoID(String tipoID) {
        this.tipoID = tipoID;
    }

    public int getIndiceTipoID() {
        return indiceTipoID;
    }

    public void setIndiceTipoID(int indiceTipoID) {
        this.indiceTipoID = indiceTipoID;
    }

}
