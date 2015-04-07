<%-- 
    Document   : pais
    Created on : 31-mar-2015, 3:24:12
    Author     : victor
--%>

<%@page import="java.util.LinkedList"%>
<%@page import="org.cfg.uapa.java.veterinaria.servicios.ServicioPais"%>
<%@page import="java.util.List"%>
<%@page import="org.cfg.uapa.java.veterinaria.entidades.Pais"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%
   List<Pais> pais = ServicioPais.getInstancia().getListadoPais();

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">

         <table class="table table-striped">
    <tr><th>#</th><th>pais</th></tr>    
            <c:forEach items="<%=pais%>" var="pais">
        <tr><td>${pais.getId()}</td><td>${pais.getDescripcion()}</td></tr>

    </c:forEach>
</table>
         <p>Tiene <%=pais.size()%> paises</p>
      
