<%-- 
    Document   : registrarMensajero
    Created on : Nov 15, 2019, 10:28:30 PM
    Author     : mfab
--%>

<%@page import="org.proyectox.entidades.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

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

<header>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, user-scalable=no">
    <title>Asuntos</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="Css/estilo.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js">
    <script type="text/javascript">
            var request;
            var error;
            var urlParams = new URLSearchParams(window.location.search);
            var modp = new RegExp('[p][=][0-9]+');

            window.addEventListener("load", iniciar, false);

            function iniciar() {
                if (modp.test(urlParams)) {
                    mensaje = urlParams.get("p");
                    if (mensaje == '1') {
                        $('#mError1').modal('show');
                    }
                    if (mensaje == '2') {
                        $('#mAceptado1').modal('show');
                    }
                }
            }	
    </script>
</header>

<body>
    <section class="container" id="Cuerpo">
        <br><br>
        <h2><b>MENSAJEROS</b></h2>
        <p>
            Descripcion de la tabla de mensajeros.
        </p><br><br>

        <div class="container " id="Tabla">
            <form action="">
                <table class="table table-bordered table-hover text-center">
                    <thead style="background-color:#6897c7; color: #252525;">
                        <tr>
                            <th class="col-md-3 text-center">Nombre</th>
                            <th class="col-md-1 text-center">Procedencia</th>
                            <th class="col-md-1 text-center">Destino</th>
                            <th class="col-md-1 text-center">Tipo de Identificación</th>
                            <th class="col-md-1 text-center">Identificación</th>
                            <th class="col-md-1 text-center">Hora de Salida</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Nombre</td>
                            <td>Procedencia</td>
                            <td>Destino</td>
                            <td>Tipo</td>
                            <td>Id</td>
                            <td><button type="submit" name="Registrar Salida" class="btn btn-default">Registrar Salida
                            </td>
                        </tr>
                    </tbody>
                </table><br>
            </form>
        </div>
    </section><br><br><br>
</body>

</html>