<%-- 
    Document   : principalRecepcionista
    Created on : Nov 15, 2019, 10:45:39 AM
    Author     : mfab
--%>

<%@page import="org.proyectox.entidades.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es" dir="ltr">

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

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, user-scalable=no">
        <title>Inicio</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="/Pruebax/css/estilo.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>

    <body>
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
                        <li><a href="">Contactar supervisor</a></li>
                        <li><a href="">CasoUsoN</a></li>
                    </ul>
                </div>
            </div>
        </section><br>

    <hr style="height: 2pt; margin-top: 0pt;" />
    <div class="container" id="Menu">
        <ul class="nav nav-pills pull-right">
            <li><a href="/Pruebax/recepcionista/registrarMensajero.jsp"><b>Registrar Mensajero</b></a></li>
            <li><a href="#"><b>Visualizar Mensajeros</b></a></li>
            <li><a href="#"><b>Asuntos</b></a></li>
            <li><a href="#"><b>Registro de usuarios</b></a></li>
        </ul>
    </div>
    <hr style="height: 2pt; margin-top: 0pt;" /><br><br>
    <section class="container" id="Cuerpo">
        <h1>Bienvenido <%=nombre%></h1>
    </section>
    <br><br>
</body>

</html>
