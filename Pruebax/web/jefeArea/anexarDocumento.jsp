<%-- 
    Document   : anexarDocumento
    Created on : Nov 16, 2019, 6:07:10 PM
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
                if (!tipoUsuario.equals("JefeA")) {
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
                <li><a href="/Pruebax/jefeArea/registrarNuevoAsunto.jsp"><b>Registrar Nuevo Asunto</b></a></li>
                <li><a href="/Pruebax/jefeArea/vistaAsuntos.jsp"><b>Consultar Asuntos</b></a></li>
                <li><a href="/Pruebax/jefeArea/anexarDocumento.jsp"><b>Anexar Documentos a Asuntos</b></a></li>
            </ul>
        </div>
        <hr style="height: 2pt; margin-top: 0pt;" />

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
        </section>
    </body>

</html>

