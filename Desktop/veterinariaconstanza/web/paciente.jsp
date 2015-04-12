<%-- 
    Document   : paciente
    Created on : 08-abr-2015, 17:20:48
    Author     : victor
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="org.cfg.uapa.java.veterinaria.servicios.ServicioPaciente"%>
<%@page import="org.cfg.uapa.java.veterinaria.entidades.Paciente"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="teplate/header.jsp"/>
<link rel="stylesheet" href="css/tablasvistacss.css" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<%
    List<Paciente> pacientes = ServicioPaciente.getInstancia().getListadoPaciente();
   
%>
<center>
<h2 class="sub-header">Paciente</h2>

<table class="table table-striped">
    <tr><th>#</th><th>Cliente</th><th>Nombre</th><th>Genero</th><th>Raza</th><th>Fecha de Nacimiento</th><th>Peso</th><th>Doctor</th></tr>    
     <c:forEach items="<%=pacientes%>" var="pacientes">
        <tr><td>${pacientes.getId()}</td><td>${pacientes.getCliente_id().getNombre()}</td><td>${pacientes.getNombre()}</td><td>${pacientes.getGenero()}</td><td>${pacientes.getRaza_id().getNombre()}</td><td>${pacientes.getFecha_nacimiento()}</td><td>${pacientes.getPeso()}</td><td>${pacientes.getDoctor_id().getNombre()}</td></tr>
    </c:forEach>
</table>
</center>
<a href="crearpaciente.jsp"> Agregar pacientes</a>
<jsp:include page="teplate/footer.jsp"/>