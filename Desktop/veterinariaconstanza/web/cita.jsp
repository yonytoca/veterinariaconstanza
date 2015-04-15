<%-- 
    Document   : cita
    Created on : 24-mar-2015, 2:51:25
    Author     : victor
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

<center>
    <h2 class="sub-header">Cita</h2>
</center>

   <div class="dataTable_wrapper">
        <table class="table table-striped table-bordered table-hover" id="dataTables-example">
            <thead>
                <tr>
                    <th>Codigo</th>
                    <th>Fecha</th>
                    <th>Paciente</th>
                    <th>Doctor</th>
                    <th>Razon</th>
                    <th>Editar</th>

                </tr>  
            </thead>
            <tbody>
                <c:forEach items="<%=citas%>" var="citas">
                <tr>
                    <td>${citas.getId()}</td>
                    <td>${citas.getFecha()}</td>
                    <td>${citas.getPaciente_id().getNombre()}</td>
                    <td>${citas.getDoctor_id().getNombre()}</td>
                    <td>${citas.getRazon()}</td>
                    <td><a href="modificarcita.jsp?id=${citas.getId()}"><i class="glyphicon glyphicon-edit"></i></a></td>

                </tr>
            </c:forEach>               
            </tbody>
        </table>
    </div>



    <a href="crearcita.jsp"> Crear Citas</a>    


    <jsp:include page="teplate/footer.jsp"/>

