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
    List<Pais> Paises = ServicioPais.getInstancia().getListadoPais();
    
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <p>Tiene <%=Paises.size()%> paises</p>
      
   
    </body>
</html>
