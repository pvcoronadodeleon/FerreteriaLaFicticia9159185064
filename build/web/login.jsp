<%-- 
    Document   : login
    Created on : Sep 2, 2022, 1:49:46 AM
    Author     : pvcor
--%>
<%@page import="Conexion.ConexionMySQL" %>
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
    </body>
    <%
        ConexionMySQL con = new ConexionMySQL();
        con.ConectarBasedeDatos();
        String sql = "select u.IDUsuario , u.Usuario , u.Nombre , u.Apellido , u.RolUsuario  from usuario u where u.Usuario = 'PCoronado' and u.Contra = MD5('V123')";
        con.resultado = con.sentencia.executeQuery(sql);
        while (con.resultado.next()){
            out.println("Algo");
        }
        con.DesconectarBasedeDatos();
    %>
</html>
