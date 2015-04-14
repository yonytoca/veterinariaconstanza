<%-- 
    Document   : agendadoctor
    Created on : 13-abr-2015, 19:17:45
    Author     : victor
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="org.cfg.uapa.java.veterinaria.servicios.ServicioCita"%>
<%@page import="org.cfg.uapa.java.veterinaria.entidades.Cita"%>
<%@page import="org.cfg.uapa.java.veterinaria.servicios.ServicioDoctor"%>
<%@page import="java.util.List"%>
<%@page import="org.cfg.uapa.java.veterinaria.entidades.Doctor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
 <%
    List<Doctor> doctor = ServicioDoctor.getInstancia().getListadoDoctores();
 int id = Integer.parseInt(request.getParameter("id"));
  Cita citas = ServicioCita.getInstancia().getCitaPorId(id);
%>
<center>
       <h2 class="sub-header">Cita</h2>
 <table class="table table-striped">
     <tr><th>Codigo</th><th>Fecha</th><th>Paciente</th><th>Doctor</th><th>Razon</th></tr>    
            <c:forEach items="<%=citas%>" var="citas">
        <tr><td>${citas.getId()}</td><td>${citas.getFecha()}</td><td>${citas.getDoctor_id().getNombre()}</td></tr>

    </c:forEach>
</table>
   </center>