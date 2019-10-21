/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.proyectox.prueba.controlador;

/**
 *
 * @author mfab
 */
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
 
import javax.swing.JFrame;

import org.proyectox.prueba.modelo.ModeloPrueba;
import org.proyectox.prueba.vista.Vista;
 
public class ControladorPrueba implements ActionListener {
 private ModeloPrueba modelo;
 private Vista vista;
 private Double cantidad;
 
 public ControladorPrueba(ModeloPrueba modelo, Vista vista) {
  this.modelo = modelo;
  this.vista = vista;
   
  this.vista.pesos.addActionListener(this);
  this.vista.dolares.addActionListener(this);
 }
 public void iniciarVista() {
  vista.setTitle("Conversor");
  vista.pack();
  vista.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
  vista.setLocationRelativeTo(null);
  vista.setVisible(true);
 }
 public void actionPerformed(ActionEvent evento) {
  if(vista.pesos == evento.getSource()) {
   if(!"".equals(vista.campoTexto.getText())) {
    try{
     cantidad = Double.parseDouble(vista.campoTexto.getText());
     modelo.setCantidad(cantidad);
     modelo.setMoneda(18.78);
     modelo.setMoneda(18.78);
     modelo.setMoneda(18.78);
     modelo.setMoneda(18.78);
     modelo.convetirDolarAPeso();
     vista.lResultado.setText(modelo.getResultado().toString());
    }catch(NumberFormatException e) {
     vista.lResultado.setText("Introduzca una cantidad valida...");
    }
   }
  }
  else if(vista.dolares == evento.getSource()) {
   if(!"".equals(vista.campoTexto.getText())) {
    try{
     cantidad = Double.parseDouble(vista.campoTexto.getText());
     modelo.setCantidad(cantidad);
     modelo.setMoneda(0.072);
     modelo.convertirPesoADolar();
     vista.lResultado.setText(modelo.getResultado().toString());
    }catch(NumberFormatException e) {
     vista.lResultado.setText("Introduzca una cantidad valida...");
    }
   }
  }
 }
}