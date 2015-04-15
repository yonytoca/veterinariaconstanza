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
    List<Cita> cita = ServicioCita.getInstancia().getListadoAgenda();
%>


<div class="dataTable_wrapper">
    <table class="table table-striped table-bordered table-hover" id="dataTables-example">
        <thead>
            <tr><th>#</th><th>Nmobre</th><th>Apellido</th></tr>
        </thead>
        <tbody
            <c:forEach items="<%= cita %>" var="cita">
                <tr><td>${cita.getId()}</td><td>${cita.getFecha()}</td></a><td>${cita.getPaciente_id().getNombre()}</td></tr>

            </c:forEach>
        </tbody> 
    </table>
</div>