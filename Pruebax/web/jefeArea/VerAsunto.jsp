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
                if (!tipoUsuario.equals("JefeA")) {
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
    <link rel="stylesheet" type="text/css" href="/Pruebax/css/estilo.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        /*var request;
        var idCuerpoTabla;
        var tabla;
        var filas;

        window.addEventListener("load", iniciar, false);

        function iniciar() {
            idCuerpoTabla = document.getElementById("tBodyVistaAsunto");

            sendVerAsunto();

            var btnBsr = document.getElementById('btnBsr');
             btnBsr.addEventListener("click", sendInfo, false);
             
             var btnEli = document.getElementById('btnEli');
             btnEli.addEventListener("click", sendInfoEliminar, false);
             
             var btnRsp = document.getElementById('btnRsp');
             btnRsp.addEventListener("click", sendInfoResponder, false);
        }

        function sendVisualizarTodosAsunto() {
            //sendVerAsuntos();
        }

        function getInfoVerAsunto() {
            if (request.readyState == 4) {
                var respuesta = request.responseText;
                idCuerpoTabla.innerHTML = respuesta;
            }
        }

        function sendVerAsunto() {
            if (window.XMLHttpRequest) {
                request = new XMLHttpRequest();
            } else if (window.ActiveXObject) {
                request = new ActiveXObject("Microsoft.XMLHTTP");
            }
            try {
                request.onreadystatechange = getInfoVerAsunto;
                request.open("POST", "/Pruebax//buscarAsunto/", true);
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
</header>

<body>

    <jsp:include page='menuJefeA.jsp' />

    <section class="container" id="Cuerpo">
        <br><br>
        <h2><b>NOMBRE DEL ASUNTOS</b></h2><br>
        <div class="col-md-3 text-center"><br><br>
            <img src="/Pruebax/img/Doc.png" style="width:300pt;"><br>
        </div>

        <div id="espacio" class="col-md-3"></div>

        <Form action="" method="">
            <div class="col-md-6 table-responsive">
                <h2>Responsable</h2>
                <span></span>

                <h2>Turnos</h2>
                <table class="table table-condensed col-md-3">
                    <thead>
                        <tr>
                            <th>Integrantes</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <span>Integrante 1</span>
                            </td>
                        </tr>
                    </tbody>
                </table>

                <h2>Documentos</h2>
                <table class="table table-condensed col-md-3">
                    <thead>
                        <tr>
                            <th>Nombre</th>
                            <th>Motivo</th>
                            <th>Ver</th>
                            <th>Anexo</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <span>Nombre 1</span>
                            </td>
                            <td>
                                <span>Motivo1</span>
                            </td>
                            <td>
                                <a href="" name="visualizarD" title="Abrir">
                                    <img src="/Pruebax/img/mas1.png" width="20px"/>
                                </a>
                            </td>
                            <td>
                                <a href="" name="obcervacionD" title="Abrir">
                                    <img  src="/Pruebax/img/ojo.png" width="20px"/>
                                </a>
                            </td>
                        </tr>
                    </tbody>
                </table><br><br><br><br><br><br>
                <button name="DescDoc" type="button" class="btn btn-default">Descripción</button>
                <button name="Suspender" type="button" class="btn btn-default">Suspender</button>
                <button name="Cancelar" type="button" class="btn btn-default">Cancelar</button>
            </div>
        </Form>
    </section><br><br><br><br>
</body>

</html>