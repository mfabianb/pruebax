
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
    <title>Asunto</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="Css/estilo.css">
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
            <li><a href="/Pruebax/recepcionista/registrarMensajero.jsp"><b>Registrar Mensajero</b></a></li>
            <li><a href="#"><b>Visualizar Mensajeros</b></a></li>
            <li><a href="#"><b>Asuntos</b></a></li>
            <li><a href="#"><b>Registro de usuarios</b></a></li>
        </ul>
    </div>
    <hr style="height: 2pt; margin-top: 0pt;" />

    <section class="container" id="Cuerpo">
        <br><br>
        <h2><b>NOMBRE DEL ASUNTOS</b></h2><br>
        <div class="col-md-3 text-center"><br><br>
            <img src="Imagenes/Doc.png" style="width:300pt;"><br>
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
                                <input name="visualizarD" type="image" src="imagenes/ojo.png" width="20px"
                                    title="Abrir" />
                            </td>
                            <td>
                                <input name="obcervacionD" type="image" src="imagenes/ojo.png" width="20px"
                                    title="Obsevaciones" />
                            </td>
                        </tr>
                    </tbody>
                </table><br><br><br><br><br><br>
                <button name="DescDoc" type="button" class="btn btn-default">Descripción</button>
                <button name="Rechazo" type="button" class="btn btn-default">Rechazar</button>
            </div>
        </Form>
    </section><br><br><br><br>
</body>

</html>