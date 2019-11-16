<%-- 
    Document   : index
    Created on : Nov 10, 2019, 11:11:09 PM
    Author     : mfab
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="org.proyectox.entidades.Usuario"%>
<!DOCTYPE html>
<html lang="es" dir="ltr">
    <%
        try {
            if (session.getAttribute("Usuario") != null) {
                //out.println("<h1>OK!</h1>");
                response.sendRedirect("/Pruebax/recepcionista/principalRecepcionista.jsp");
            } else {
                //out.println("<h1>Falta</h1>");
                //response.sendRedirect("/Pruebax/CerrarSesion");
            }
        } catch (Exception e) {
            //out.println("<h1>Falta</h1>");
            //response.sendRedirect("/Pruebax/CerrarSesion");
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
        <script type="text/javascript">
            var request;
            var error;
            var urlParams = new URLSearchParams(window.location.search);
            var modp = new RegExp('[e][=][0-9]+');

            window.addEventListener("load", iniciar, false);

            function iniciar() {
                if (modp.test(urlParams)) {
                    error = urlParams.get("e");
                    if (error == '1') {
                        $('#mError1').modal('show');
                    } else if (error == '2') {
                        $('#mError2').modal('show');
                    }
                }
            }
        </script>
    </head>

    <body>
        <div class="container">
            <form method="POST" action="/Pruebax/IniciarSesion" name="requestFormLogin" class="col-md-6" id="Login-Box">
                <br><img class="img-center" src="/Pruebax/img/Logo-GUM.png" style="height: 50pt;"><br><br>
                <br><br><br><h2><b>Bienvenido</b></h2><br>
                <label for="correo">Correo</label>
                <div class="input-group col-md-5">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                    <input id="email" type="text" class="form-control form-rounded" name="usuario" placeholder="Ejemplo@mail.gum.com">
                </div><br>
                <label for="contrasena">Contraseña</label>
                <div class="input-group col-md-5">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                    <input id="password" type="password" class="form-control form-rounded" name="password" placeholder="Id de trabajador">
                </div><br><br>
                <button type="submit" class="col-md-5 btn"><b>Iniciar sesión</b></button><br><br><br>
            </form>
            <div class="col-md-6-inline" id="img1">
                <img class="img" src="/Pruebax/img/Robot.png" style="height: 377pt; width: 324pt;">
            </div>
        </div>
        <div id="mError1" class="modal fade" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">Favor de verificar sus datos prueba</h4>
                    </div>
                    <div class="modal-body">
                        <div class="alert alert-dismissable alert-danger">
                            <strong>El Nombre de Usuario o la Contraseña</strong> no tienen el formato requerido, favor de verificarlo.
                        </div>
                    </div>
                    <div class="modal-footer">
                        <a type="button" class="btn btn-danger" data-dismiss="modal">Si, voy a verificar.</a>
                    </div>
                </div>
            </div>
        </div>
        <div id="mError2" class="modal fade" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">Favor de verificar sus datos</h4>
                    </div>
                    <div class="modal-body">
                        <div class="alert alert-dismissable alert-danger">
                            <strong>El Nombre de Usuario o la Contraseña</strong> no coinciden con los registros, favor de verificarlo.
                        </div>
                    </div>
                    <div class="modal-footer">
                        <a type="button" class="btn btn-danger" data-dismiss="modal">Si, voy a verificar.</a>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
