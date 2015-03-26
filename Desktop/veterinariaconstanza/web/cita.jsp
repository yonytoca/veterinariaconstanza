<%-- 
    Document   : cita
    Created on : 24-mar-2015, 2:51:25
    Author     : victor
--%>

<%@page import="java.util.List"%>
<%@page import="org.cfg.uapa.java.veterinaria.modelos.ModeloCita"%>
<%@page import="org.cfg.uapa.java.veterinaria.entidades.Cita"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    List<Cita> citas = ModeloCita.getInstancia().getListadoCita();
   
%>
<h2 class="sub-header">Citas</h2>
<table class="table table-striped">
    <tr><th>#</th><th>Cita</th><th>Fecha</th></tr>    
            <c:forEach items="<%=citas%>" var="Cita">
        <tr><td>${Cita.getId()}</td><td>${Cita.getFecha}</td><td>${Cita.getRazon()}</td></tr>

    </c:forEach>
</table>
<a href="crearcita.jsp"> Crear Citas</a>