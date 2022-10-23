<%-- 
    Document   : CrearUsuario
    Created on : Sep 27, 2022, 12:02:10 AM
    Author     : pvcor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Crear Usuario</title>
        <link href="resources/lib/bootstrap-5.2.1-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <jsp:include page="masterpage/header.jsp"/>
            </div>
            <div class="row">
                <form action="CrearUsuario" method="post">
                    <div class="row">
                        <div class="column"><label for="usuario">Usuario </label></div>
                        <div class="column"><input type="text" name="usuario"/></div>
                    </div>
                    <div class="row">
                        <div class="column"><label for="contra">Contraseña </label></div>
                        <div class="column"><input type="password" name="contra"/></div>
                    </div>
                    <div class="row">
                        <div class="column"><label for="nombre">Nombre </label></div>
                        <div class="column"><input type="text" name="nombre"/></div>
                    </div>
                    <div class="row">
                        <div class="column"><label for="apellido">Apellido </label></div>
                        <div class="column"><input type="text" name="apellido"/></div>
                    </div>
                    <div class="row">
                        <div class="column"><label for="telefono">Telefono </label></div>
                        <div class="column"><input type="text" name="telefono"/></div>
                    </div>
                    <div class="row">
                        <div class="column"><label for="direccion">Direccion </label></div>
                        <div class="column"><input type="text" name="direccion""/></div>
                    </div>
                    <div class="row">
                        <div><input type="submit" value="Crear" class="btn btn-info" style="margin-top: 5px;"/></div>
                    </div>
                </form>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" ></script>
        <script src="resources/lib/bootstrap-5.2.1-dist/js/bootstrap.min.js" type="text/javascript"></script>

    </body>
</html>s