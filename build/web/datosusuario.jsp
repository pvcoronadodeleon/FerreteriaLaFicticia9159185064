<%-- 
    Document   : datosusuario
    Created on : Sep 27, 2022, 10:59:02 PM
    Author     : pvcor
--%>

<%@page import="clases.Usuario" %>
<%@page import="funciones.FuncionesUsuario" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Datos de usuario</title>
        <link href="resources/lib/bootstrap-5.2.1-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <jsp:include page="masterpage/header.jsp"/>
            </div>
            <div class="row">
                <%
                    Integer IDUsuario;
                    Usuario usuarioSesion = new Usuario();
                    usuarioSesion = (Usuario) session.getAttribute("Usuario");
                    if (request.getParameter("IDUsuario") != null) {
                        IDUsuario = Integer.parseInt(request.getParameter("IDUsuario"));
                    } else {
                        IDUsuario = usuarioSesion.getIdUsuario();
                    }
                    Usuario usuario = new Usuario();
                    FuncionesUsuario funUsuario = new FuncionesUsuario();
                    usuario = funUsuario.ObtenerUsuario(IDUsuario);
                %>
                <div class="row">
                <form name="DatosUsuario" action="ModificarUsuario" method="post">
                    <div class="row">
                        <div class="column"><label for="idusuario">IDUsuario </label></div>
                        <div class="column"><input type="text" name="idusuario" readonly="readonly" value="<%out.println(usuario.getIdUsuario());%>"/></div>
                    </div>
                    <div class="row">
                        <div class="column"><label for="usuario">Usuario </label></div>
                        <div class="column"><input type="text" name="usuario" value="<%out.println(usuario.getUsuario());%>"/></div>
                    </div>
                    <div class="row">
                        <div class="column"><label for="nombre">Nombre </label></div>
                        <div class="column"><input type="text" name="nombre" value="<%out.println((usuario.getNombre() != null) ? usuario.getNombre() : "");%>"/></div>
                    </div>
                    <div class="row">
                        <div class="column"><label for="apellido">Apellido </label></div>
                        <div class="column"><input type="text" name="apellido" value="<%out.println((usuario.getApellido() != null) ? usuario.getApellido() : "");%>"/></div>
                    </div>
                    <div class="row">
                        <div class="column"><label for="telefono">Telefono </label></div>
                        <div class="column"><input type="text" name="telefono" value="<%out.println((usuario.getTelefono() != null) ? usuario.getTelefono() : "");%>"/></div>
                    </div>
                    <div class="row">
                        <div class="column"><label for="direccion">Direccion </label></div>
                        <div class="column"><input type="text" name="direccion" value="<%out.println((usuario.getDireccion() != null) ? usuario.getDireccion() : "");%>"/></div>
                    </div>
                    <div class="row">
                        <div><input type="submit" value="Modificar" class="btn btn-info" style="margin-top: 5px;"/></div>
                    </div>
                </form>
                </div>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" ></script>
        <script src="resources/lib/bootstrap-5.2.1-dist/js/bootstrap.min.js" type="text/javascript"></script>
    </body>
</html>
