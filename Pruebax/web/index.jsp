<%-- 
    Document   : index
    Created on : Nov 10, 2019, 11:11:09 PM
    Author     : mfab
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es" dir="ltr">
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
        <div class="container">
            <div class="col-md-6" id="Login-Box">
                <br><img class="img-center" src="/Pruebax/img/Logo-GUM.png" style="height: 50pt;"><br><br>
                <br><br><br><h2><b>Bienvenido</b></h2><br>
                <label for="correo">Correo</label>
                <div class="input-group col-md-5">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                    <input id="email" type="text" class="form-control form-rounded" name="correo" placeholder="Ejemplo@mail.gum.com">
                </div><br>
                <label for="contrasena">Contraseña</label>
                <div class="input-group col-md-5">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                    <input id="password" type="password" class="form-control form-rounded" name="password" placeholder="Id de trabajador">
                </div><br><br>
                <button class="col-md-5 btn"><b>Iniciar sesión</b></button><br><br><br>
            </div>
            <div class="col-md-6-inline" id="img1">
                <img class="img" src="/Pruebax/img/Robot.png" style="height: 377pt; width: 324pt;">
            </div>
        </div>
    </body>
</html>
