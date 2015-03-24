<%-- 
    Document   : crearcita
    Created on : 24-mar-2015, 2:29:19
    Author     : victor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ page import="java.util.List"%>
<%@ page import="org.cfg.uapa.java.veterinaria.modelos.ModeloDoctor"%>
<%@ page import="org.cfg.uapa.java.veterinaria.entidades.Doctor"%>



<%
    List<Doctor> Doctor = ModeloDoctor.getInstancia().getListadoDoctores();

%>
        <h1>Crear Cita</h1>
       
        <form class="form-horizontal" action="/veterinariaconstanza/DoctorControles" method="post">
     <div class="form-group">
        <label>Fecha</label>
        <input type="text" name="inputfecha" style="width:30%;" id="inputNombre" class="form-control" placeholder="fecha"><br> <br>
         <label>Paciente</label>
        <input type="text" name="inputpaciente" style="width:30%;" id="inputNombre" class="form-control" placeholder="paciente"><br> <br>
    <label>Doctor</label>
        <input type="text" name="inputdoctor" style="width:30%;" id="inputNombre" class="form-control" placeholder="doctor"><br> <br>
      <label>Razon</label>
        <input type="text" name="inputrazon" style="width:30%;" id="inputNombre" class="form-control" placeholder="razon"><br> <br>
     </div>
            <div class="form-group">
        <button type="submit" class="btn btn-default" tabindex="3">Confirmar</button>
    </div>
            
            
    <div class="form-group">
        <label>Pais</label>
        

    <div class="form-group">
        <button type="submit" class="btn btn-default" tabindex="3">Crear</button>
    </div>

</form>

 