/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.proyectox.controlador.insertar;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.proyectox.entidades.Usuario;
import org.proyectox.modelo.insertar.insertarNuevoAsunto;
import org.proyectox.validar.ValidarFormato;

/**
 *
 * @author mfab
 */
public class registrarNuevoAsunto extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");  /// LÍNEAS MUY IMPORTANTES PARA LEER UTF-8
        request.setCharacterEncoding("UTF-8");               /// LÍNEAS MUY IMPORTANTES PARA LEER UTF-8
        try {
            PrintWriter out = response.getWriter();
            HttpSession sesion = request.getSession(true);
            Usuario usuario = (Usuario) sesion.getAttribute("Usuario");

            if (usuario.getTipoUsuario().equals("JefeA")) {
                String nombre;
                String fechaTermino;
                String tipo;
                
                nombre = request.getParameter("nombreAsunto");
                fechaTermino = request.getParameter("fechaTerminoEstimadaAsunto");
                tipo = request.getParameter("TipoAsunto");
                
                if(ValidarFormato.validarCrearNuevoAsunto(new String[]{nombre, fechaTermino, tipo})){
                    if(insertarNuevoAsunto.insertarAsunto(nombre, fechaTermino, tipo, usuario.getIdUsuario())){
                        response.sendRedirect("/Pruebax/jefeArea/registrarNuevoAsunto.jsp?p=1");
                    }else{
                        response.sendRedirect("/Pruebax/jefeArea/registrarNuevoAsunto.jsp?p=2");
                    }
                }else{
                    response.sendRedirect("/Pruebax/jefeArea/registrarNuevoAsunto.jsp?p=3");
                }
                
            }
        } catch (Exception e) {
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
