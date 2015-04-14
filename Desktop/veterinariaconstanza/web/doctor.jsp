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
 <table class="table table-striped">
     <tr><th>#</th><th>Nmobre</th><th>Apellido</th></tr>    
            <c:forEach items="<%=doctor%>" var="doctor">
        <tr><td>${doctor.getId()}</td><td>${doctor.getNombre()}</td><td>${doctor.getApellido()}</td></tr>

    </c:forEach>
</table>
   </center>
<a href="creardoctor.jsp"> Agregar Doctor</a>



<jsp:include page="teplate/footer.jsp"/>
        