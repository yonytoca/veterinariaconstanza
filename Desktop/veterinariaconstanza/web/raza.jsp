<%-- 
    Document   : raza
    Created on : 10-abr-2015, 2:25:28
    Author     : victor
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="org.cfg.uapa.java.veterinaria.servicios.ServicioRaza"%>
<%@page import="java.util.List"%>
<%@page import="org.cfg.uapa.java.veterinaria.entidades.Raza"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<jsp:include page="teplate/header.jsp"/>
<link rel="stylesheet" href="css/tablasvistacss.css" />

<%
   List<Raza> razas = ServicioRaza.getInstancia().getListadoRaza(); 
  
%>

<center>
<h2 class="sub-header">Raza</h2>
<table class="table table-striped">
    <tr><th>#</th><th>Nombre</th><th>especie</th></tr>    
     <c:forEach items="<%=razas%>" var="razas">
        <tr><td>${razas.getId()}</td><td>${razas.getNombre()}</td><td>${razas.getEspecie_id().getNombre()}</td></tr>
    </c:forEach>
</table>
</center>
<a href="crearraza.jsp"> Agregar Raza</a>
<jsp:include page="teplate/footer.jsp"/>