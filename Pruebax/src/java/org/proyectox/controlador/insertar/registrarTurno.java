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
import org.proyectox.modelo.insertar.insertarTurno;
import org.proyectox.modelo.insertar.insertarUsuario;
import org.proyectox.modelo.insertar.insertarUsuarioDepto;

/**
 *
 * @author julio
 */
public class registrarTurno extends HttpServlet {

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
                    String[] turnos = request.getParameterValues("turnos");
                    String asunto = request.getParameter("asunto");
                    for(String value : turnos){
                        insertarTurno.insertarTurno(Integer.parseInt(asunto.trim()), Integer.parseInt(value.trim()));
                    }
                    response.sendRedirect("/Pruebax/jefeArea/Turnar.jsp?p=1");
                    //if (ValidarFormato.validarRegistroMensajeros(new String[]{nombre, procedencia, destino, identificacion})) {
                        
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
                ex.printStackTrace();
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
