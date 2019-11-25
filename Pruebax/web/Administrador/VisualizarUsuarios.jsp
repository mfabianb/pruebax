
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

            <h2><b>Usuarios</b></h2>
            <p>
                Pila todos los usuarios de la empresa en los que esta invlolucrado:
            </p>

            <div class="col-md-3"></div>

            <div class="container col-md-6" id="Tabla">
                <form action="" method="POST">
                    <div class="form-group">
                        <label for="tipoUsuario" name="tipoUsuario" class="control-label col-sm-4">Tipo de usuario:</label>
                        <div class="col-sm-4">
                            <select class="form-control" id="tipoUsuario" name="tipo" onchange="Mostrar()">
                                <option value="Todos">Todos</option>
                                <option value="Recepcionista">Recepcionista</option>
                                <option value="Empleado">Empleado</option>
                                <option value="JefeD">Jefe de departamento</option>
                                <option value="JefeA">Jefe de area</option>
                            </select>
                        </div>
                    </div><br><br><br><br>
                    
                    <table class="table table-bordered table-hover text-center">
                        <thead style="background-color:#6897c7; color: #252525;">
                            <tr>
                                <th class="col-md-3 text-center">Nombre</th>
                                <th class="col-md-1 text-center">Modificar</th>
                                <th class="col-md-1 text-center">Ver</th>
                            </tr>
                        </thead>
                        <tbody id="tBodyVistaAsunto">
                            <tr>
                                <td>
                                    <label name="nomAsunto">Nombre</label>

                                </td>
                                <td>
                                    <a href="/Pruebax/Administrador/registrarUsuario.jsp" title="Modificar">
                                        <img  src="/Pruebax/img/modificar.png" width="30px" alt="Modificar" />
                                    </a>
                                </td>
                                <td>
                                    <a href="/Pruebax/Administrador/VerUsuario.jsp" title="Abrir">
                                        <img  src="/Pruebax/img/ojo.png" width="30px" alt="Abrir"  />
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