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
    List<Cliente> clientes = ServicioCliente.getInstancia().getListadoCliente();
   
%>
<h2 class="sub-header">Clientes</h2>
<table class="table table-striped">
    <tr><th>#</th><th>Nombre</th><th>Apellido</th></tr>    
            <c:forEach items="<%=clientes%>" var="cliente">
        <tr><td>${clientes.getId()}</td><td>${clientes.getNombre()}</td><td>${clientes.getApellido()}</td></tr>

    </c:forEach>
</table>
<a href="crearcliente.jsp"> Agregar Cliente</a>

<jsp:include page="teplate/footer.jsp"/>