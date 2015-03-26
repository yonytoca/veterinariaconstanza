<%-- 
    Document   : creardoctor
    Created on : 24-mar-2015, 3:52:35
    Author     : victor
--%>
<jsp:include page="teplate/header.jsp"/>
<%@ page import="java.util.List"%>
<%@ page import="org.cfg.uapa.java.veterinaria.modelos.ModeloDoctor"%>
<%@ page import="org.cfg.uapa.java.veterinaria.entidades.Doctor"%>

<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>

        <h1>Crear Doctor</h1>
 <%
    List<Doctor> Doctor = ModeloDoctor.getInstancia().getListadoDoctores();

%>
        
         <form class="form-horizontal" action="/veterinariaconstanza/DoctorControles" method="post">
     <div class="form-group">
        <label>Nombre</label>
        <input type="text" name="inputnombre" style="width:30%;" id="inputNombre" class="form-control" placeholder="nombre"><br> <br>
         <label>Apellido</label>
        <input type="text" name="inputapellido" style="width:30%;" id="inputNombre" class="form-control" placeholder="apellido"><br> <br>
    </div>
         <div class="form-group">
        <button type="submit" class="btn btn-default" tabindex="3">Crear</button>
    </div>
        <jsp:include page="teplate/footer.jsp"/>     
