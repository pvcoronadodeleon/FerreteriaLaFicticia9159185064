<%-- 
    Document   : login
    Created on : Sep 2, 2022, 1:49:46 AM
    Author     : pvcor
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ferreteria La Ficticia</title>
    </head>
    <body>
        <h1>Ferreteria La Ficticia</h1>
        <h3>Inicio de sesion</h3>
        <form action="Login" method="post">
            <input type="text" name="usuario"/>
            <input type="password" name="contra"/>
            <input type="submit" value="Iniciar Sesion"/>
        </form>
    </body>

</html>
