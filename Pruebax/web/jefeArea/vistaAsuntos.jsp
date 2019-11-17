
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
            <li><a href="/Pruebax/jefeArea/registrarNuevoAsunto.jsp"><b>Registrar Nuevo Asunto</b></a></li>
            <li><a href="/Pruebax/jefeArea/vistaAsuntos.jsp"><b>Consultar Asuntos</b></a></li>
            <li><a href="#"><b></b></a></li>
        </ul>
    </div>
    <hr style="height: 2pt; margin-top: 0pt;" />

    <section class="container" id="Cuerpo">
        <br><br>
        <h2><b>ASUNTOS</b></h2>
        <p>
            Pila de asuntos en los que esta invlolucrado:
        </p><br><br>

        <div class="col-md-3"></div>

        <div class="container col-md-6" id="Tabla">
            <form action="">
                <table class="table table-bordered table-hover text-center">
                    <thead style="background-color:#6897c7; color: #252525;">
                        <tr>
                            <th class="col-md-3 text-center">Nombre</th>
                            <th class="col-md-1 text-center">Turnar</th>
                            <th class="col-md-1 text-center">Documentos</th>
                            <th class="col-md-1 text-center"></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><label name="nomAsunto">Nombre</label></td>
                            <td>
                                <input name="turno" type="image" src="/Pruebax/img/Turnar.png" width="40px"
                                    title="Asignar empleados">
                            </td>
                            <td>
                                <input name="masDoc" type="image" src="/Pruebax/img/mas1.png" width="40px"
                                    title="Archivar documento" />
                            </td>
                            <td>
                                <input name="visualizar" type="image" src="/Pruebax/img/ojo.png" width="40px"
                                    title="Abrir" />
                            </td>
                        </tr>
                    </tbody>
                </table><br>
            </form>
        </div>
    </section><br>
</body>

</html>