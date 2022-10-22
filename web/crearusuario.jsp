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
                    <label for="usuario">Usuario </label><input type="text" name="usuario"/>
                    <label for="contra">Contraseña </label><input type="password" name="contra"/>
                    <label for="nombre">Nombre</label><input type="text" name="nombre"/>
                    <label for="apellido">Apellido </label><input type="text" name="apellido"/>
                    <label for="telefono">Telefono </label><input type="text" name="telefono"/>
                    <label for="direccion">Direccion </label><input type="text" name="direccion"/>
                    <input type="submit" value="Crear"/>
                </form>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" ></script>
        <script src="resources/lib/bootstrap-5.2.1-dist/js/bootstrap.min.js" type="text/javascript"></script>

    </body>
</html>s