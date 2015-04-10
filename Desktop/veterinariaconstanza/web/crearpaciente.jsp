<%-- 
    Document   : crearpaciente
    Created on : 07-abr-2015, 1:41:59
    Author     : victor
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="org.cfg.uapa.java.veterinaria.entidades.Doctor"%>
<%@page import="org.cfg.uapa.java.veterinaria.servicios.ServicioDoctor"%>
<%@page import="org.cfg.uapa.java.veterinaria.entidades.Raza"%>
<%@page import="org.cfg.uapa.java.veterinaria.servicios.ServicioRaza"%>
<%@page import="org.cfg.uapa.java.veterinaria.entidades.Cliente"%>
<%@page import="org.cfg.uapa.java.veterinaria.servicios.ServicioCliente"%>
<%@page import="org.cfg.uapa.java.veterinaria.entidades.Paciente"%>
<%@page import="java.util.List"%>
<%@page import="org.cfg.uapa.java.veterinaria.servicios.ServicioPaciente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <link rel="stylesheet" href="css/formulariocss.css" /> 
 <jsp:include page="teplate/header.jsp"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
 <%
   List<Cliente> clientes = ServicioCliente.getInstancia().getListadoCliente();
   List<Raza> razas = ServicioRaza.getInstancia().getListadoRaza();  
   List<Doctor> doctores = ServicioDoctor.getInstancia().getListadoDoctores();
%>

<div id="contenedor">              
         <form class="form-horizontal" action="/veterinariaconstanza/PacienteControl" method="post">
     <div class="form-group">
                  <select name="inputcliente">
                         <c:forEach items="<%=clientes%>" var="clientes">
                         <option value="${clientes.getId()}">${clientes.getNombre()}</option>
                         </c:forEach>
                  </select><br>
         <label>Nombre</label>
        <input type="text" name="nombre" style="width:30%;" id="inputNombre" class="form-control" placeholder="nombre"><br> <br>
        <label>Genero</label>
        <input type="text" name="genero" style="width:30%;" id="inputNombre" class="form-control" placeholder="genero"><br> <br>
        <label>Raza</label>  
        <select name="inputPais">
                         <c:forEach items="<%=razas%>" var="razas">
                         <option value="${razas.getId()}">${razas.getNombre()}</option>
                         </c:forEach>
          </select>  <br><br>      
                  <label>Fecha Nacimiento</label>
  <input type="text" name="fechanacimiento" style="width:30%;" id="inputNombre" class="form-control" placeholder="Fecha de nacimiento"><br> <br>
  <label>Peso</label>
        <input type="text" name="peso" style="width:30%;" id="inputNombre" class="form-control" placeholder="peso"><br> <br>
        <label>Doctor</label>
        <select name="input">
                         <c:forEach items="<%=doctores%>" var="doctores">
                         <option value="${doctores.getId()}">${doctores.getNombre()}</option>
                         </c:forEach>
          </select>               
    </div>       
         <div class="form-group">
        <button type="submit" class="btn btn-default" tabindex="3">Crear</button>
    </div>
            </form>
</div>
<jsp:include page="teplate/footer.jsp"/>