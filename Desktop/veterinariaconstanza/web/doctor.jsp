<%-- 
    Document   : doctor
    Created on : 24-mar-2015, 4:50:01
    Author     : victor
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="org.cfg.uapa.java.veterinaria.servicios.ServicioDoctor"%>
<%@page import="org.cfg.uapa.java.veterinaria.entidades.Doctor"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="teplate/header.jsp"/>

<%
    List<Doctor> doctor = ServicioDoctor.getInstancia().getListadoDoctores();

%>


<center>
    <h2 class="sub-header">Doctores</h2>
</center>


<div class="dataTable_wrapper">
    <table class="table table-striped table-bordered table-hover" id="dataTables-example">
        <thead>
            <tr><th>#</th><th>Nmobre</th><th>Apellido</th></tr>
        </thead>
        <tbody
            <c:forEach items="<%=doctor%>" var="doctor">
                <tr><td>${doctor.getId()}</td><td><a href="agendadoctor.jsp?id=${doctor.getId()}">${doctor.getNombre()}</td></a><td>${doctor.getApellido()}</td></tr>

            </c:forEach>
        </tbody> 
    </table>
</div>

<a href="creardoctor.jsp"> Agregar Doctor</a>



<jsp:include page="teplate/footer.jsp"/>
