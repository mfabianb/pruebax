<%-- 
    Document   : registrarMensajero
    Created on : Nov 15, 2019, 10:35:52 AM
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

    </head>

    <body>

        <jsp:include page='menuRecepcionista.jsp'/>

        <section class="container" id="Cuerpo">

            <h2><b>Registro de mensajero</b></h2><br>
            <form class="form-horizontal" action="/Pruebax/recepcionista/registrarMensajero" method="post">
                <h4><b>Información general</b></h4>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="nomMensajero">Nombre:</label>
                    <div class="col-sm-4">
                        <input name="Mensajero" type="name" class="form-control" id="nomMensajero">
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-sm-2" for="procedencia">Procedencia:</label>
                    <div class="col-sm-4">
                        <input name="Procedencia" type="text" class="form-control" id="procedencia">
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-sm-2" for="destino">Destino:</label>
                    <div class="col-sm-4">
                        <input name="Destino" type="text" id="destino" type="text" class="form-control">
                    </div>
                </div>

                <div class="form-group">
                    <label for="tipo" class="control-label col-sm-2">Tipo de identificación:</label>
                    <div class="col-sm-4">
                        <select class="form-control" id="tipoId" name="TipoIdMensajero">
                            <option>INE</option>
                            <option>ORGANIZACIÓN</option>
                            <option>OTRA</option>
                        </select>
                    </div>
                </div><br>

                <div class="form-group">
                    <label class="control-label col-sm-2" for="idM">Identificación</label>
                    <div class="col-sm-4">
                        <input name="IdMensajero" type="text" id="idM" type="text" class="form-control">
                    </div>
                </div><br>
                <div class="form-group">
                    <div class="col-sm-offset-5">
                        <button type="submit" name="RegistroMen" class="btn btn-default">Registrar</button>
                    </div>
                </div>
            </form>
        </section><br><br><br><br>

        <div id="mError1" class="modal fade" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">Favor de verificar sus datos</h4>
                    </div>
                    <div class="modal-body">
                        <div class="alert alert-dismissable alert-danger">
                            <strong>Algún dato es incorrecto</strong> no tienen el formato requerido, favor de
                            verificarlo.<br>
                            No se aceptan carácteres especiales ni campos en blanco.
                        </div>
                    </div>
                    <div class="modal-footer">
                        <a type="button" class="btn btn-danger" data-dismiss="modal">Si, voy a verificar.</a>
                    </div>
                </div>
            </div>
        </div>

        <div id="mAceptado1" class="modal fade" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">Registro exitoso</h4>
                    </div>
                    <div class="modal-body">
                        <div class="alert alert-dismissable alert-success">
                            <strong>Registro exitoso.</strong> puede pasar el área que va a visitar.
                            <strong>RECUERDE REGISTRAR SU SALIDA AQUÍ MISMO.</strong>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <a type="button" class="btn btn-success" data-dismiss="modal">Si, voy.</a>
                    </div>
                </div>
            </div>
        </div>

    </body>

</html>
