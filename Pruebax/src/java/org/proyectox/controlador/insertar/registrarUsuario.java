/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.proyectox.controlador.insertar;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.proyectox.entidades.Usuario;
import org.proyectox.modelo.insertar.insertarJefeArea;
import org.proyectox.modelo.insertar.insertarJefeDepto;
import org.proyectox.modelo.insertar.insertarUsuario;
import org.proyectox.modelo.insertar.insertarUsuarioDepto;
import org.proyectox.validar.ValidarFormato;

/**
 *
 * @author julio
 */
public class registrarUsuario extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            try {
                
                HttpSession sesion = request.getSession(true);
                Usuario usuario = (Usuario) sesion.getAttribute("Usuario");
                
                if (usuario != null) {
                    //Hay sesión
                    int idUsuario;
                    String nombre;
                    String email;
                    String password;
                    String tipoUsuario;
                    String idAD;
                    int indiceTipoUsuario = 0;
                    System.out.println("VAS BIEN");

                    idUsuario = Integer.parseInt(request.getParameter("idUsuario"));
                    
                    nombre = request.getParameter("nomUsuario");
                    email = request.getParameter("email");
                    password = request.getParameter("Contraseña");
                    tipoUsuario = request.getParameter("tipoUsuario");
                    idAD = request.getParameter("Area");
                    if (tipoUsuario.equals("Admin")) {
                        indiceTipoUsuario = 1;
                    } else if (tipoUsuario.equals("JefeA")) {
                        indiceTipoUsuario = 2;
                    } else if (tipoUsuario.equals("JefeD")) {
                        indiceTipoUsuario = 3;
                    } else if (tipoUsuario.equals("Recepcionista")) {
                        indiceTipoUsuario = 4;
                    } else if (tipoUsuario.equals("Empleado")) {
                        indiceTipoUsuario = 5;
                    } else if (tipoUsuario.equals("Supervisor")) {
                        indiceTipoUsuario = 6;
                    }
                    System.out.println("TODO BIEN");
                    //if (ValidarFormato.validarRegistroMensajeros(new String[]{nombre, procedencia, destino, identificacion})) {
                        if (insertarUsuario.insertarUsuario(idUsuario, nombre, email, password,indiceTipoUsuario)) {
                            System.out.println("TODO BIEN");
                            if(tipoUsuario.equals("Recepcionista")){
                                response.sendRedirect("/Pruebax/Administrador/registrarUsuario.jsp?p=2");
                            } else if(tipoUsuario.equals("Empleado")){
                                if(insertarUsuarioDepto.insertarUsuarioDepto(idUsuario, Integer.parseInt(idAD))){
                                    response.sendRedirect("/Pruebax/Administrador/registrarUsuario.jsp?p=2");
                                } else {
                                    response.sendRedirect("/Pruebax/Administrador/registrarUsuario.jsp?p=1");
                                }
                            } else if(tipoUsuario.equals("JefeA")){
                                if(insertarJefeArea.insertarJefeArea(idUsuario, Integer.parseInt(idAD))){
                                    response.sendRedirect("/Pruebax/Administrador/registrarUsuario.jsp?p=2");
                                } else {
                                    response.sendRedirect("/Pruebax/Administrador/registrarUsuario.jsp?p=1");
                                }
                            } else if(tipoUsuario.equals("JefeD")){
                                if(insertarJefeDepto.insertarJefeDepto(idUsuario, Integer.parseInt(idAD))){
                                    response.sendRedirect("/Pruebax/Administrador/registrarUsuario.jsp?p=2");
                                } else {
                                    response.sendRedirect("/Pruebax/Administrador/registrarUsuario.jsp?p=1");
                                }
                            }
                        } else {
                            response.sendRedirect("/Pruebax/Administrador/registrarUsuario.jsp?p=1");
                        }
                    //} else {
                    //    response.sendRedirect("/Pruebax/Administrador/registrarUsuario.jsp?p=3");
                    //}
                    /*out.println("<h3>Nombre: " + nombre + "</h3>");
                    out.println("<h3>Procedencia: " + procedencia + "</h3>");
                    out.println("<h3>Destino: " + destino + "</h3>");
                    out.println("<h3>Identificación: " + identificacion + "</h3>");*/
                } else {
                }
            } catch (Exception ex) {
                response.sendRedirect("/Pruebax/CerrarSesion");
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
