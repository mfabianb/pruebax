<%-- 
    Document   : registrarNuevoAsunto
    Created on : Nov 16, 2019, 5:43:21 PM
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
                if (!tipoUsuario.equals("JefeD")) {
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
            var fechaTerminoMinimo;

            window.addEventListener("load", iniciar, false);
            window.addEventListener("load", fechaTermino, false);

            function iniciar() {
                if (modp.test(urlParams)) {
                    error = urlParams.get("p");
                    if (error == '1') {
                        $('#mAceptado1').modal('show');
                    } else if (error == '2' || error == '3') {
                        $('#mError2').modal('show');
                    }
                }
            }

            function fechaTermino() {
                var hoy = new Date();
                fechaTerminoMinimo = hoy.getFullYear() + '-' + ('0' + (hoy.getMonth() + 1)).slice(-2) + '-' + ('0' + hoy
                        .getDate()).slice(-2);
                document.getElementById('fechaTerminoEstimada').min = fechaTerminoMinimo;
                document.getElementById('fechaTerminoEstimada').value = fechaTerminoMinimo;
            }
        </script>
    </head>

    <body>
        
        <jsp:include page='menuJefeD.jsp'/>

        <section class="container" id="Cuerpo">
            
            <h2><b>Nuevo Asunto</b></h2>
            <p>
                Por favor, para crear un asunto nuevo llena el siguiente formulario con atención.
                Tenga a la mano todos los documentos necesarios para el registro exitoso del asunto.
                <br>Gracias por su comprensión para cualquier corrección o aclaración comuníquese con
                el administrador.
            </p><br>

            <form class="form-horizontal" action="/Pruebax/JefeA/registrarNuevoAsunto" method="POST">
                <h4><b>Datos del asunto</b></h4>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="name">Nombre:</label>
                    <div class="col-sm-4">
                        <input name="nombreAsunto" type="name" class="form-control" id="name"
                               placeholder="Ingresar nombre del asunto">
                    </div>
                </div>

                <div class="form-group">
                    <label for="tipo" class="control-label col-sm-2">Tipo:</label>
                    <div class="col-sm-4">
                        <select class="form-control" id="tipo" name="TipoAsunto">
                            <option value="1">Interno</option>
                            <option value="2">Externo</option>
                        </select>
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-sm-2" for="name">Fecha de estimación de término: </label>
                    <div class="col-sm-4">
                        <input name="fechaTerminoEstimadaAsunto" type="date" min="" max="2022-12-31" class="form-control"
                               id="fechaTerminoEstimada" placeholder="Ingresar nombre del asunto">
                    </div>
                </div>

                <br>

                <h4><b>Descripción del asunto</b></h4>
                <div class="form-group">
                    <div id="div_file" class="btn btn-default col-sm-offset-2">
                        <label class="center" for="btn_enviar">Subir Documento</label>
                        <input type="file" name="DescAsunto" id="btn_enviar">
                    </div>
                </div><br>

                <div class="form-group">
                    <div class="col-sm-10">
                        <button type="submit" name="CrearAsunto" class="btn btn-default">Crear</button>
                    </div>
                </div><br>
            </form>
        </section> <br><br><br><br>

        <div id="mError2" class="modal fade" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">Favor de verificar los datos</h4>
                    </div>
                    <div class="modal-body">
                        <div class="alert alert-dismissable alert-danger">
                            <strong>Alguno de los datos registrados</strong> no tienen el formato requerido, favor de
                            verificarlo.
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
                        <h4 class="modal-title">Asunto registrado exitosamente.</h4>
                    </div>
                    <div class="modal-body">
                        <div class="alert alert-dismissable alert-success">
                            <strong>Asunto registrado exitosamente, ya puede Turnarlo</strong> o alguna otra acción.
                        </div>
                    </div>
                    <div class="modal-footer">
                        <a type="button" class="btn btn-success" data-dismiss="modal">Si, gracias.</a>
                    </div>
                </div>
            </div>
        </div>
    </body>

</html>
