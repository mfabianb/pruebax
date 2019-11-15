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
        try {
            if (session.getAttribute("Usuario") != null) {
                //out.println("<h1>OK!</h1>");
                nombre = ((Usuario)session.getAttribute("Usuario")).getNombre();
            } else {
                //out.println("<h1>Falta</h1>");
                response.sendRedirect("/Pruebax/CerrarSesion");
            }
        } catch (Exception e) {
            //out.println("<h1>Falta</h1>");
            response.sendRedirect("/Pruebax/CerrarSesion");
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
        <hr style="height: 33pt;  margin-top: 0; background-color: #618ab3;" /><br /><br />
        <section class="container-fluid" id="Cabecera">
            <div class="col-md-3">
                <img class="img-center" src="/Pruebax/img/Logo-GUM.png" style="height: 50pt;">
            </div>

            <div class="col-md-3"></div>

            <div class="col-md-6 d-flex flex-row-reverse" style="margin-top: 20pt">
                <a title="instagram" href="" target="blank">
                    <img src="/Pruebax/img/instagram.png" width="30" alt="instagram" />
                </a>
                <a title="facebook" href="" target="blank">
                    <img src="/Pruebax/img/facebook.png" width="30" alt="facebook" />
                </a>
                <a title="twitter" href="#" target="blank">
                    <img src="/Pruebax/img/twitter.png" width="30" alt="twitter" />
                </a>
                <a title="ubicación" data-toggle="modal" data-target="#myModal">
                    <img src="/Pruebax/img/ubic.png" width="30" alt="Ubicacion" />
                </a>

                <div class="dropdown" style="display: inline;" id="Registro">
                    <a href="#" class="dropdown-toggle" style="text-decoration: none;" data-toggle="dropdown" ID="registro"
                       runat="server">| NombreUsuario<span class="caret"></span> | </a>
                    <ul class="dropdown-menu">
                        <li><a href="">CasoUso1</a></li>
                        <li><a href="">CasoUso2</a></li>
                        <li><a href="">CasoUsoN</a></li>
                    </ul>
                </div>
                <input type="text" placeholder="Buscar" id="search">
            </div>
        </section><br>

        <div class="modal fade" id="myModal" role="dialog">
            <div class="modal-dialog">

                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h2 class="modal-title">Ubicación</h2>
                    </div>
                    <div class="modal-body center-block">
                    </div>
                    <iframe
                        src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3201.276200932864!2d-116.39818608522512!3d36.64380548418817!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80c70baaaaaaaaab%3A0x9f97481bfe85a9d8!2sArea%2051%20Alien%20Center!5e0!3m2!1ses!2smx!4v1573121167907!5m2!1ses!2smx"
                        width="600" height="500"></iframe>
                </div>
            </div>

        </div>
    </div><br><br>

    <hr style="height: 2pt; margin-top: 0pt;" />
    <div class="container" id="Menu">
        <ul class="nav nav-pills pull-right">
            <li><a href="/Pruebax/recepcionista/registrarMensajero.jsp"><b>Registrar Mensajero</b></a></li>
            <li><a href="/Pruebax/CerrarSesion"><b>Cerrar Sesión</b></a></li>
            <li><a href="#"><b>Men1</b></a></li>
            <li><a href="#"><b>Men1</b></a></li>
        </ul>
    </div>
    <hr style="height: 2pt; margin-top: 0pt;" /><br><br>
    
    <h1>Bienvenido <%out.print(nombre);%></h1>
    <br><br>
</body>

</html>
