<%-- 
    Document   : cita
    Created on : 24-mar-2015, 2:51:25
    Author     : victor
--%>

<%@page import="java.util.List"%>
<%@page import="org.cfg.uapa.java.veterinaria.servicios.ServicioCita"%>
<%@page import="org.cfg.uapa.java.veterinaria.entidades.Cita"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="teplate/header.jsp"/>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <%
    List<Cita> citas = ServicioCita.getInstancia().getListadoCita();
   
%>
<h2 class="sub-header">Citas</h2>

<a href="crearcita.jsp"> Crear Citas</a>    


<jsp:include page="teplate/footer.jsp"/>
        
