<%-- 
    Document   : registrarMensajero
    Created on : Nov 15, 2019, 10:35:52 AM
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
</header>

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
        <h2><b>Registro de mensajero</b></h2><br>
        <form class="form-horizontal" action="/Pruebax/registrarMensajero" method="post">
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
                <div class="col-sm-10">
                    <button type="submit" name="RegistroMen" class="btn btn-default">Registrar</button>
                </div>
            </div>
        </form>
    </section>
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
