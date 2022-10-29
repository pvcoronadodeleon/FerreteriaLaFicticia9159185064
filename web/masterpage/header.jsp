<%-- 
    Document   : header
    Created on : Sep 13, 2022, 1:14:48 AM
    Author     : pvcor
--%>
<%@page import="clases.Usuario" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="resources/css/header.css"/>
<header>
    <div id="NombreFerreteria">
        <h1>Ferreteria La Ficticia</h1>
        <h3>Sistema administrativo</h3>
    </div>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <div id="NombreUsuario">
        <%
            Usuario usuarioMostrar = new Usuario();
            usuarioMostrar = (Usuario) session.getAttribute("Usuario");
            out.println("<strong>" + usuarioMostrar.getNombre() + " " + usuarioMostrar.getApellido() + "</strong>");
        %>
    </div>
</header>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavDropdown">
            <ul class="navbar-nav">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Usuario
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                        <li><a class="dropdown-item" href="crearusuario.jsp">Crear Usuario</a></li>
                        <li><a class="dropdown-item" href="datosusuario.jsp">Informacion Usuario</a></li>
                        <li><a class="dropdown-item" href="listausuarios.jsp">Ver Usuarios</a></li>
                        <li><a class="dropdown-item" href="login.jsp">Cerrar Sesion</a></li>
                    </ul>
                </li>
                                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Producto
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                        <li><a class="dropdown-item" href="listaproductos.jsp">Lista de productos</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>
    
    