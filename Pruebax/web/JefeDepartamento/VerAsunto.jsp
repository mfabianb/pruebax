
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

<header>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, user-scalable=no">
    <title>Asunto</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/Pruebax/css/estilo.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script type="text/javascript">
    </script>
</header>

<body>

    <jsp:include page='MenuJefeD.jsp'/>

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
                <span></span><br><br><br>

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
                </table><br><br><br>

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
                <button name="Rechazo" type="button" class="btn btn-default">Rechazar</button>
                <button name="Cancelar" type="button" class="btn btn-default">Cancelar</button>
                <button name="Fin" type="button" class="btn btn-default">Finalizar</button>
            </div>
        </Form>
    </section><br><br><br><br>
</body>

</html>