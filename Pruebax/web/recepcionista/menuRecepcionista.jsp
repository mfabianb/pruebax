<%-- 
    Document   : menuRecepcionista
    Created on : Nov 20, 2019, 10:49:35 AM
    Author     : mfab
--%>

<%@page import="org.proyectox.entidades.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String nombre = "";
    String tipoUsuario = "";
    try {
        if (session.getAttribute("Usuario") != null) {
            tipoUsuario = ((Usuario) session.getAttribute("Usuario")).getTipoUsuario();
            nombre = ((Usuario) session.getAttribute("Usuario")).getNombre();
            if (!tipoUsuario.equals("Recepcionista")) {
                response.sendRedirect("/Pruebax/CerrarSesion");
            }
        } else {
            response.sendRedirect("/Pruebax/CerrarSesion");
        }
    } catch (Exception e) {
    }
%>

<hr style="height: 33pt;  margin-top: 0; background-color: #618ab3;" />
<section class="container-fluid" id="Cabecera">
    <div class="col-md-3">
        <img class="img-center" src="/Pruebax/img/Logo-GUM.png" style="height: 50pt;">
    </div>

    <div class="col-md-7"></div>

    <div class="col-md-2 d-flex flex-row-reverse" style="margin-top: 20pt">
        <div class="dropdown" style="display: inline;" id="Registro">
            <a href="#" class="dropdown-toggle" style="text-decoration: none;" data-toggle="dropdown" ID="registro"
               runat="server">| <%=nombre%> <span class="caret"></span> | </a>
            <ul class="dropdown-menu">
                <li><a href="/Pruebax/recepcionista/principalRecepcionista.jsp">Página Principal</a></li>
                <li><a href="/Pruebax/CerrarSesion">Cerrar Sesión</a></li>
            </ul>
        </div>
    </div>
</section><br>

<hr style="height: 2pt; margin-top: 0pt;" />
<div class="container" id="Menu">
    <ul class="nav nav-pills pull-right">
        <li><a href="/Pruebax/recepcionista/registrarMensajero.jsp"><b>Registrar Mensajero</b></a></li>
        <li><a href="/Pruebax/recepcionista/visualizarMensajeros.jsp"><b>Visualizar Mensajeros</b></a></li>
        <li><a href="/Pruebax/recepcionista/vistaAsuntos.jsp"><b>Consultar Asuntos</b></a></li>
    </ul>
</div>
<hr style="height: 2pt; margin-top: 0pt;" />
