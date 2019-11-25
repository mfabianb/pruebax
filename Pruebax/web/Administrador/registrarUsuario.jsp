
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

        <jsp:include page='menuAdmin.jsp'/>

        <section class="container" id="Cuerpo">

            <h2><b>Registro de usuario</b></h2><br>
            <form name="Formulario1" class="form-horizontal" action="/Pruebax/Administrador/registrarUsuario" method="post">
                <h4><b>Información general</b></h4>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="id">Id Usuario:</label>
                    <div class="col-sm-4">
                        <input name="idUsuario" type="name" class="form-control" id="id">
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-sm-2" for="nomUsuario">Nombre:</label>
                    <div class="col-sm-4">
                        <input name="Nombre" type="name" class="form-control" id="nomUsuario">
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-sm-2" for="email">Email:</label>
                    <div class="col-sm-4">
                        <input name="email" type="text" class="form-control" id="email">
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-sm-2" for="Contraseña">Contraseña:</label>
                    <div class="col-sm-4">
                        <input name="password" type="text" id="Contraseña" type="text" class="form-control">
                    </div>
                </div>

                <div class="form-group">
                    <label for="tipoUsuario" name="tipoUsuario" class="control-label col-sm-2">Tipo de usuario:</label>
                    <div class="col-sm-4">
                        <select class="form-control" id="tipoUsuario" name="tipo" onchange="Mostrar()">
                            <option value="Recepcionista">Recepcionista</option>
                            <option value="Empleado">Empleado</option>
                            <option value="JefeD">Jefe de departamento</option>
                            <option value="JefeA">Jefe de area</option>
                        </select>
                    </div>
                </div><br>

                <div id="opt-1" style="display:none;"><jsp:include page='RegistrarJefeA.jsp'/></div>
                <div id="opt-2" style="display:none;"><jsp:include page='RegistrarEmpleado.jsp'/></div>

                <script type="text/javascript">
                    function Mostrar() {
                        var tipo = document.getElementById("tipoUsuario").value;
                        if(tipo == "JefeA"){
                            document.getElementById('opt-1').style.display = 'block';
                            document.getElementById('opt-2').style.display = 'none';
                        }if(tipo == "JefeD"){
                            document.getElementById('opt-1').style.display = 'none';
                            document.getElementById('opt-2').style.display = 'block';
                        }if(tipo == "Empleado"){
                            document.getElementById('opt-1').style.display = 'none';
                            document.getElementById('opt-2').style.display = 'block';
                        }if(tipo == "Recepcionista"){
                            document.getElementById('opt-1').style.display = 'none';
                            document.getElementById('opt-2').style.display = 'none';
                        }
                    }
                </script>

                <div class="form-group">
                    <div class="col-sm-offset-5">
                        <button type="submit" name="RegistroUsur" class="btn btn-default">Registrar</button>
                    </div>
                </div>
            </form>
        </section><br><br><br><br>
    </body>

</html>
