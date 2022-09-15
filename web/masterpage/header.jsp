<%-- 
    Document   : header
    Created on : Sep 13, 2022, 1:14:48 AM
    Author     : pvcor
--%>
<%@page import="clases.Usuario" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="resources/css/header.css"/>
<header>
    <h1>Ferreteria La Ficticia</h1>
    <h3>Sistema administrativo</h3>
    <%
        Usuario usuario = new Usuario();
        usuario = (Usuario) session.getAttribute("Usuario");
        out.println("<strong>" + usuario.getNombre() + " " + usuario.getApellido() + "</strong>");
    %>
    <a href="login.jsp">Cerrar Sesion</a>
</header>