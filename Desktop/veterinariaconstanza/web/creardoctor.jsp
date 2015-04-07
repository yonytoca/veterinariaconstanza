<%-- 
    Document   : creardoctor
    Created on : 24-mar-2015, 3:52:35
    Author     : victor
--%>
<jsp:include page="teplate/header.jsp"/>
<%@ page import="java.util.List"%>
<%@ page import="org.cfg.uapa.java.veterinaria.servicios.ServicioDoctor"%>
<%@ page import="org.cfg.uapa.java.veterinaria.entidades.Doctor"%>

<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>

        <h1>Crear Doctor</h1>
 <%
    List<Doctor> doctor = ServicioDoctor.getInstancia().getListadoDoctores();

%>
 <link rel="stylesheet" href="css/formulariocss.css" />      
<div id="contenedor">              
         <form class="form-horizontal" action="/veterinariaconstanza/DoctorControl" method="post">
     <div class="form-group">
        <label>Nombre</label>
        <input type="text" name="nombre" style="width:30%;" id="inputNombre" class="form-control" placeholder="nombre"><br> <br>
         <label>Apellido</label>
        <input type="text" name="apellido" style="width:30%;" id="inputNombre" class="form-control" placeholder="apellido"><br> <br>
    </div>       
         <div class="form-group">
        <button type="submit" class="btn btn-default" tabindex="3">Crear</button>
    </div>
            </form>
</div>
        <jsp:include page="teplate/footer.jsp"/>     
