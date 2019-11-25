
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

        <jsp:include page='menuJefeA.jsp'/>

        <section class="container" id="Cuerpo">

            <h2><b>Usuarios</b></h2>
            <p>
                Pila todos los jefes de area:
            </p>

            <div class="col-md-3"></div>

            <div class="container col-md-6" id="Tabla">
                <form action="" method="POST"><br><br>
                    
                    <table class="table table-bordered table-hover text-center">
                        <thead style="background-color:#6897c7; color: #252525;">
                            <tr>
                                <th class="col-md-3 text-center">Nombre</th>
                                <th class="col-md-1 text-center">Ver</th>
                                <th class="col-md-1 text-center">Elegir</th>
                            </tr>
                        </thead>
                        <tbody id="tBodyVistaAsunto">
                            <tr>
                                <td>
                                    <label name="nomAsunto">Nombre</label>

                                </td>
                                <td>
                                    <a href="/Pruebax/jefeArea/VerEmpleado.jsp" title="Abrir">
                                        <img  src="/Pruebax/img/ojo.png" width="40px" alt="Abrir"  />
                                    </a>
                                </td>
                                <td>
                                    <div class="checkbox">
                                        <label><input type="checkbox" value=""></label>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table><br>
                    <button name="Turno" type="button" class="btn btn-default">Turnar</button>
                </form>
            </div>
        </section><br><br><br><br>
    </body>

</html>