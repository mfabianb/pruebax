
<%@page import="org.proyectox.entidades.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<%
    String nombre = "";
    String tipoUsuario = "";
    try {
        if (session.getAttribute("Usuario") != null) {
            tipoUsuario = ((Usuario) session.getAttribute("Usuario")).getTipoUsuario();
            nombre = ((Usuario) session.getAttribute("Usuario")).getNombre();
            if (!tipoUsuario.equals("JefeD")) {
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
                <li><a href="/Pruebax/CerrarSesion">Cerrar Sesión</a></li>
            </ul>
        </div>
    </div>
</section><br>

<hr style="height: 2pt; margin-top: 0pt;" />
<div class="container" id="Menu">
    <ul class="nav nav-pills pull-right">
        <li><a href="/Pruebax/JefeDepartamento/registrarNuevoAsunto.jsp"><b>Crear Nuevo Asunto</b></a></li>
        <li><a href="/Pruebax/JefeDepartamento/vistaAsuntos.jsp"><b>Consultar Asuntos</b></a></li>
    </ul>
</div>
<hr style="height: 2pt; margin-top: 0pt;" />
