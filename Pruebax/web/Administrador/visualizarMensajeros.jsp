
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
                if (!tipoUsuario.equals("Admin")) {
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
        <title>Asuntos</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="Css/estilo.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>

    <body>

        <jsp:include page='menuAdmin.jsp'/>

        <section class="container" id="Cuerpo">

            <h2><b>MENSAJEROS</b></h2>
            <p>
                Descripcion de la tabla de mensajeros.
            </p>

            <div class="col-md-1"></div>

            <div class="container col-md-9 center" id="Tabla">
                <form action="">
                    <table class="table table-bordered table-hover text-center">
                        <thead style="background-color:#6897c7; color: #252525;">
                            <tr>
                                <th class="col-md-3 text-center">Nombre</th>
                                <th class="col-md-1 text-center">Procedencia</th>
                                <th class="col-md-1 text-center">Destino</th>
                                <th class="col-md-1 text-center">Tipo de Identificación</th>
                                <th class="col-md-1 text-center">Identificación</th>
                                <th class="col-md-1 text-center">Hora de Entrada</th>
                                <th class="col-md-1 text-center">Hora de Salida</th>
                                <th class="col-md-1 text-center">Borrar</th>
                            </tr>
                        </thead>
                        <tbody id="tBodyVistaMensajero">
                            <tr>
                                <td><label name="Nombre">Nombre</label> </td>
                                <td><label name="Procedencia">Procedencia</label></td>
                                <td><label name="Destino">Destino</label></td>
                                <td><label name="TipoIdentificacion">Tipo</label></td>
                                <td><label name="Identificación">Id</label></td>
                                <td><label name="hora-entrada">7:00</label></td>
                                <td><label name="hora-salida">7:33</label></td>
                                <td>
                                    <div class="checkbox">
                                        <label><input type="checkbox" value=""></label>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table><br>
                    <button name="Borrar" type="button" class="btn btn-default">Borrar</button>
                </form>
            </div>
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