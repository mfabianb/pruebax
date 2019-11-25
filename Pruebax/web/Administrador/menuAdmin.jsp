
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
            if (!tipoUsuario.equals("Admin")) {
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
                <li><a href="/Pruebax/Administrador/principalAdmin.jsp">Página Principal</a></li>
                <li><a href="/Pruebax/CerrarSesion">Cerrar Sesión</a></li>
            </ul>
        </div>
    </div>
</section><br>

<hr style="height: 2pt; margin-top: 0pt;" />
<div class="container" id="Menu">
    <ul class="nav nav-pills pull-right">
        <li><a href="/Pruebax/Administrador/registrarUsuario.jsp"><b>Registrar Usuario</b></a></li>
        <li><a href="/Pruebax/Administrador/VisualizarUsuarios.jsp"><b>Ver Usuarios</b></a></li>
        <li><a href="/Pruebax/Administrador/vistaAsuntos.jsp"><b>Ver Asuntos</b></a></li>
        <li><a href="/Pruebax/Administrador/visualizarMensajeros.jsp"><b>Visualizar Mensajeros</b></a></li>
    </ul>
</div>
<hr style="height: 2pt; margin-top: 0pt;" />