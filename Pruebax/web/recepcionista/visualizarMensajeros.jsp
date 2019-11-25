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

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, user-scalable=no">
        <title>Asuntos</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="Css/estilo.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script type="text/javascript">
            var request;
            var idCuerpoTabla;

            var error;
            var urlParams = new URLSearchParams(window.location.search);
            var modp = new RegExp('[p][=][0-9]+');

            window.addEventListener("load", iniciar, false);

            function iniciar() {

                marcarModales();

                idCuerpoTabla = document.getElementById("tBodyVistaMensajero");

                sendVerMensajero();

                /*var btnBsr = document.getElementById('btnBsr');
                 btnBsr.addEventListener("click", sendInfo, false);
                 
                 var btnEli = document.getElementById('btnEli');
                 btnEli.addEventListener("click", sendInfoEliminar, false);
                 
                 var btnRsp = document.getElementById('btnRsp');
                 btnRsp.addEventListener("click", sendInfoResponder, false);*/
            }

            function marcarModales() {

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

            function getInfoVerMensajero() {
                if (request.readyState == 4) {
                    var respuesta = request.responseText;
                    idCuerpoTabla.innerHTML = respuesta;
                }
            }

            function sendVerMensajero() {
                if (window.XMLHttpRequest) {
                    request = new XMLHttpRequest();
                } else if (window.ActiveXObject) {
                    request = new ActiveXObject("Microsoft.XMLHTTP");
                }
                try
                {
                    request.onreadystatechange = getInfoVerMensajero;
                    request.open("POST", "/Pruebax/recepcionista/buscarMensajero", true);
                    request.send();
                } catch (e) {
                    alert("Unable to connect to server");
                }
            }

            /*function sendInfoEliminar() {
             sendEliminarCuestionario();
             }
             
             
             
             function sendBuscarCuestionario() {
             if (window.XMLHttpRequest) {
             request = new XMLHttpRequest();
             } else if (window.ActiveXObject) {
             request = new ActiveXObject("Microsoft.XMLHTTP");
             }
             try
             {
             request.onreadystatechange = getInfo;
             request.open("POST", "/MueveTusManos/buscarCuestionario?clave=" + temas + "&nombre=" + nombre, true);
             request.send();
             } catch (e) {
             alert("Unable to connect to server");
             }
             }
             
             function getInfoEliminar() {
             if (request.readyState == 4) {
             var val = request.responseText;
             document.getElementById('msgEli').innerHTML = 'Pregunta Eliminada';
             document.getElementById('hache41').innerHTML = '';
             document.getElementById('btnEli').disabled = true;
             document.getElementById('tb').innerHTML = '';
             setTimeout(function () {
             location.reload();
             }, 500);
             }
             }
             
             function sendEliminarCuestionario() {
             if (window.XMLHttpRequest) {
             request = new XMLHttpRequest();
             } else if (window.ActiveXObject) {
             request = new ActiveXObject("Microsoft.XMLHTTP");
             }
             
             try {
             request.onreadystatechange = getInfoEliminar;
             request.open("POST", "/MueveTusManos/borrarCuestionario?id=" + id, true);
             request.send();
             } catch (e) {
             alert("Unable to connect to server");
             }
             }
             
             function sendInfoResponder() {
             document.getElementById('frmRspCst').action = '/MueveTusManos/llamarCuestionario';
             document.getElementById('frmRspCst').submit();
             }
             
             function mostrarEliminar() {
             tabla = document.getElementById('tbl');
             filas = document.getElementById('tb').getElementsByTagName('tr');
             var funcion = function () {
             id = tabla.rows[this.rowIndex].cells[1].innerHTML;
             var pregunta = document.getElementById('hache41');
             var idd = document.getElementById('spana1');
             idd.innerHTML = id;
             pregunta.innerHTML = ('Nombre: ') + (tabla.rows[this.rowIndex].cells[2].innerHTML) + '<br>Fecha: ' + (tabla.rows[this.rowIndex].cells[3].innerHTML);
             $('#mEliminar').modal('show');
             }
             
             for (i = 0; i < filas.length; i++) {
             filas[i].onclick = funcion;
             }
             }
             
             function mostrarVisualizar() {
             tabla = document.getElementById('tbl');
             filas = document.getElementById('tb').getElementsByTagName('tr');
             var funcion = function () {
             id = tabla.rows[this.rowIndex].cells[1].innerHTML;
             var idd = document.getElementById('nC');
             idd.value = id;
             $('#mResponder').modal('show');
             }
             
             for (i = 0; i < filas.length; i++) {
             filas[i].onclick = funcion;
             }
             }
             */

        </script>
    </head>

    <body>

        <jsp:include page='menuRecepcionista.jsp'/>

        <section class="container" id="Cuerpo">

            <h2><b>MENSAJEROS</b></h2>
            <p>
                Descripcion de la tabla de mensajeros.
            </p>

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
                        <tbody id="tBodyVistaMensajero">
                            <tr>
                                <td><label name="Nombre">Nombre</label> </td>
                                <td><label name="Procedencia">Procedencia</label></td>
                                <td><label name="Destino">Destino</label></td>
                                <td><label name="TipoIdentificacion">Tipo</label></td>
                                <td><label name="Identificación">Id</label></td>
                                <td>
                                    <button type="submit" name="Registrar Salida" class="btn btn-default">Registrar Salida</button>
                                </td>
                            </tr>
                        </tbody>
                    </table><br>
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