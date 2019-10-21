package org.proyectox.prueba.vista;

import java.awt.BorderLayout;
import java.awt.FlowLayout;
 
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextField;
 
public class Vista extends JFrame{
 public JButton pesos, dolares;
 private JPanel panelB, panelR;
 public JLabel lResultado;
 public JTextField campoTexto;
 
 public Vista() {
  getContentPane().setLayout(new BorderLayout());
   
  panelB = new JPanel();
  panelB.setLayout(new FlowLayout());
   
  panelR = new JPanel();
  panelR.setLayout(new FlowLayout());
   
  pesos = new JButton("Convertir a Pesos");
  dolares = new JButton("Convertir a Dolares");
   
  lResultado = new JLabel("Resultado:");
  campoTexto = new JTextField(20);
   
  panelB.add(pesos);
  panelB.add(dolares);
   
  panelR.add(lResultado);
   
  add(campoTexto, BorderLayout.NORTH);
  add(panelB, BorderLayout.SOUTH);
  add(panelR, BorderLayout.CENTER);
 }
}