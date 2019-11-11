package org.proyectox.sesion;

/*
 *      Autor: mfab
 *  Documento: IniciarSesion
 *  Creado el: Mar 26, 2019, 9:25:44 PM
 *   Proyecto: Mueve tus Manos
 */


import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.proyectox.entidades.Usuario;
import org.proyectox.modelo.consultar.ConsultarUsuario;
import org.proyectox.validar.ValidarFormato;

/**
 *
 * @author mfab
 */
@WebServlet(name = "IniciarSesion", urlPatterns = {"/IniciarSesion"})
public class IniciarSesion extends HttpServlet {

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
            String usuarioLogin;
            String contrasenaLogin;
            Usuario usuario = null;
            HttpSession sesion = request.getSession(true);

            if (sesion.getAttribute("Usuario") != null) {
                response.sendRedirect("/Pruebax/index.jsp");
            } else {
                usuarioLogin = request.getParameter("usuario");
                contrasenaLogin = request.getParameter("password");

                if (!ValidarFormato.esAlfanumerico(usuarioLogin) || !ValidarFormato.esAlfanumerico(contrasenaLogin)) {
                    response.sendRedirect("/Pruebax/index.jsp?e=1");
                } else {
                    usuario = ConsultarUsuario.consultarUnUsuario(usuarioLogin, contrasenaLogin);
                    if (usuario != null) {
                        sesion.setAttribute("Usuario", usuario);
                        response.sendRedirect("/Pruebax/index.jsp?a=1");
                    } else {
                        response.sendRedirect("/Pruebax/index.jsp?e=2");
                    }
                }
            }
        }catch(Exception e){
            response.sendRedirect("/Pruebax/");
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
        response.sendRedirect("/Pruebax/");
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
