

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
    </head>

    <body>
        <jsp:include page='menuJefeD.jsp'/>

        <section class="container" id="Cuerpo">
            
            <h2><b>Documentos asociados</b></h2>
            <p>
                Todo el asunto debe ser auditable, cada actividad que se
                realice debe ser documentada. Por favor llene el siguiente
                formulario con atención para que el asunto quede
                correctamente documentado.
            </p><br>

            <h4><b>Información del documento</b></h4><br>
            <form class="form-horizontal" action="">
                <div class="form-group">
                    <label class="control-label col-sm-2" for="nombre">Nombre:</label>
                    <div class="col-sm-4">
                        <input type="text" name="NombreDoc" class="form-control" id="nombre"
                               placeholder="Nombre del documento asociado">
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-sm-2" for="motivo">Motivo:</label>
                    <div class="col-sm-4">
                        <input type="text" name="MotivoDoc" class="form-control" id="motivo"
                               placeholder="Ingresar descripción">
                    </div>
                </div><br>

                <h4><b>Observaciones</b></h4>
                <div class="form-group">
                    <div id="div_file" class="btn btn-default col-sm-offset-2">
                        <label class="center" for="btn_enviar">Subir Documento</label>
                        <input type="file" name="ObSubir" id="btn_enviar">
                    </div>
                </div><br>

                <h4><b>Documento</b></h4>
                <div class="form-group">
                    <div id="div_file" class="btn btn-default col-sm-offset-2">
                        <label class="center" for="btn_enviar">Subir Documento</label>
                        <input type="file" name="DocSubir" id="btn_enviar">
                    </div>
                </div><br>

                <div class="form-group">
                    <div class="col-sm-10">
                        <button name="Doc" type="submit" class="btn btn-default">Subir documento</button>
                    </div>
                </div>
            </form>
        </section><br><br><br><br>
    </body>

</html>

