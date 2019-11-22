
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
                try
                {
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

        <jsp:include page='menuRecepcionista.jsp'/>

        <section class="container" id="Cuerpo">

            <h2><b>ASUNTOS</b></h2>
            <p>
                Pila de asuntos en los que esta invlolucrado:
            </p>

            <div class="col-md-3"></div>

            <div class="container col-md-6" id="Tabla">
                <form action="" method="POST">
                    <table class="table table-bordered table-hover text-center">
                        <thead style="background-color:#6897c7; color: #252525;">
                            <tr>
                                <th class="col-md-3 text-center">Nombre</th>
                                <th class="col-md-1 text-center">Documentos</th>
                                <th class="col-md-1 text-center"></th>
                            </tr>
                        </thead>
                        <tbody id="tBodyVistaAsunto">
                            <tr>
                                <td>
                                    <label name="nomAsunto">Nombre</label>

                                </td>
                                <td>
                                    <a href="/Pruebax/recepcionista/anexarDocumento.jsp" title="Archivar documento">
                                        <img src="/Pruebax/img/mas1.png" width="40px"alt="Archivar documento" />
                                    </a>
                                </td>
                                <td>
                                    <a href="/Pruebax/recepcionista/VerAsunto.jsp" title="Abrir">
                                        <img  src="/Pruebax/img/ojo.png" width="40px" alt="Abrir"  />
                                    </a>
                                </td>
                            </tr>
                        </tbody>
                    </table><br>
                </form>
            </div>
        </section><br><br><br><br>
    </body>

</html>