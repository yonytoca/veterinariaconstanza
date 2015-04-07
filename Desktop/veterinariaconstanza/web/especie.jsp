<%-- 
    Document   : especie
    Created on : 31-mar-2015, 23:05:37
    Author     : victor
--%>

<%@page import="org.cfg.uapa.java.veterinaria.servicios.ServicioEspecie"%>
<%@page import="org.cfg.uapa.java.veterinaria.entidades.Especie"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<%
    List<Especie> especie = ServicioEspecie.getInstancia().getListadoEspecie();
   
%>
        <table class="table table-striped">
    <tr><th>#</th><th>Especies</th></tr>    
            <c:forEach items="<%=especie%>" var="especie">
        <tr><td>${especie.getId()}</td><td>${especie.getNombre()}</td></tr>

    </c:forEach>
</table>
   <p>Tiene <%=especie.size()%> especie</p>
