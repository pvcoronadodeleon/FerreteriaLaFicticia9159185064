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
    </head>
    <body>
        <jsp:include page="masterpage/header.jsp"/>
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
        <form name="DatosUsuario" action="ModificarUsuario" method="post">
            <label for="idusuario">IDUsuario </label><input type="text" name="idusuario" readonly="readonly" value="<%out.println(usuario.getIdUsuario());%>"/>
            <label for="usuario">Usuario </label><input type="text" name="usuario" value="<%out.println(usuario.getUsuario());%>"/>
            <label for="nombre">Nombre </label><input type="text" name="nombre" value="<%out.println(usuario.getNombre());%>"/>
            <label for="apellido">Apellido </label><input type="text" name="apellido" value="<%out.println(usuario.getApellido());%>"/>
            <label for="telefono">Telefono </label><input type="text" name="telefono" value="<%out.println(usuario.getTelefono());%>"/>
            <label for="direccion">Direccion </label><input type="text" name="direccion" value="<%out.println(usuario.getDireccion());%>"/>
            <input type="submit" value="Modificar"/>
        </form>
    </body>
</html>
