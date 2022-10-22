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
        <link href="resources/css/login.css" rel="stylesheet" type="text/css"/>
        <link href="resources/lib/bootstrap-5.2.1-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div id="Login" class="container">
            <div class="row justify-content-center">
                <div class="col col-lg-2">
                    <h3>Inicio de sesion</h3>
                </div>
            </div>
            <form action="Login" method="post">
                <div class="row justify-content-center">
                    <div class="col col-lg-1">
                        <label for="usuario">Usuario </label>
                    </div>
                    <div class="col col-lg-2">
                        <input type="text" name="usuario" class="form-control"/>
                    </div>

                </div>
                <div class="row justify-content-center">
                    <div class="col col-lg-1">
                        <label for="contra">Contraseña </label>
                    </div>
                    <div class="col col-lg-2">
                        <input type="password" name="contra" class="form-control"/>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-1">
                        <input type="submit" value="Iniciar Sesion" class="btn btn-primary" id="LoginButton"/>
                    </div>
                </div>

            </form>
        </div>
        <%
            session.invalidate();
        %>
        <script src="resources/lib/jquery-3.6.1.min.js" type="text/javascript"></script>
        <script src="resources/lib/popper.min.js" type="text/javascript"></script>
        <script src="resources/lib/bootstrap-5.2.1-dist/js/bootstrap.min.js" type="text/javascript"></script>
    </body>

</html>
