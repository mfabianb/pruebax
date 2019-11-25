
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

        <jsp:include page='menuAdmin.jsp'/>

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
                                <th class="col-md-1 text-center">Turnar</th>
                                <th class="col-md-1 text-center">Ver</th>
                            </tr>
                        </thead>
                        <tbody id="tBodyVistaAsunto">
                            <tr>
                                <td>
                                    <label name="nomAsunto">Nombre</label>
                                </td>
                                <td>
                                    <a href="/Pruebax/Administrador/Turnar.jsp" title="Abrir">
                                        <img  src="/Pruebax/img/Turnar.png" width="40px" alt="Abrir"  />
                                    </a>
                                </td>
                                <td>
                                    <a href="/Pruebax/Administrador/VerAsunto.jsp" title="Abrir">
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