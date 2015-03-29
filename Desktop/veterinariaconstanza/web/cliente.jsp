<%-- 
    Document   : cliente
    Created on : 24/03/2015, 12:59:18 AM
    Author     : EDUARDO
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="teplate/header.jsp"/>
<%@page import="org.cfg.uapa.java.veterinaria.servicios.ServicioCliente"%>
<%@page import="java.util.List"%>
<%@page import="org.cfg.uapa.java.veterinaria.entidades.Cliente"%>
<%
    List<Cliente> cliente = ServicioCliente.getInstancia().getListadoClientes();
   
%>
<h2 class="sub-header">Clientes</h2>

<a href="crearcliente.jsp"> Agregar Cliente</a>

<jsp:include page="teplate/footer.jsp"/>