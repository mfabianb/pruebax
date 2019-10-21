package org.proyectox.prueba.conversor;
//Holaaaa
import javax.swing.UIManager;
import javax.swing.UnsupportedLookAndFeelException;
 
import org.proyectox.prueba.modelo.ModeloPrueba;
import org.proyectox.prueba.vista.Vista;
import org.proyectox.prueba.controlador.ControladorPrueba;
 
public class PruebaConversor {
 public static void main(String arf[]) {
  try {
   UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName());
  }
  catch (UnsupportedLookAndFeelException e) {
  }
  catch (ClassNotFoundException e) {
  }
  catch (InstantiationException e) {
  }
  catch (IllegalAccessException e) {
  }
  ModeloPrueba modelo = new ModeloPrueba();
  Vista vista = new Vista();
  ControladorPrueba controlador = new ControladorPrueba(modelo, vista);
  controlador.iniciarVista();
 }
}
