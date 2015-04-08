<%-- 
    Document   : crearpaciente
    Created on : 07-abr-2015, 1:41:59
    Author     : victor
--%>

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
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
 <%
   List<Cliente> clientes = ServicioCliente.getInstancia().getListadoCliente();
 %>
 
 <%
   List<Raza> razas = ServicioRaza.getInstancia().getListadoRaza();  
%>

 <%   
   List<Doctor> doctores = ServicioDoctor.getInstancia().getListadoDoctores();
%>
<p>Tiene <%=doctores.size()%> doctores</p>
<p>Tiene <%=clientes.size()%> cliente</p>
<p>Tiene <%=razas.size()%> razas</p>

<div id="contenedor">              
         <form class="form-horizontal" action="/veterinariaconstanza/PacienteControl" method="post">
     <div class="form-group">
                  <select name="inputcliente">
                         <c:forEach items="<%=clientes%>" var="clientes">
                         <option value="${cliente.getId()}">${cliente.getNombre()}</option>
                         </c:forEach>
                  </select><br>
         <label>nombre</label>
        <input type="text" name="nombre" style="width:30%;" id="inputNombre" class="form-control" placeholder="apellido"><br> <br>
        <label>Genero</label>
        <input type="text" name="genero" style="width:30%;" id="inputNombre" class="form-control" placeholder="apellido"><br> <br>
          <select name="inputPais">
                         <c:forEach items="<%=razas%>" var="razas">
                         <option value="${raza.getId()}">${raza.getNombre()}</option>
                         </c:forEach>
          </select>  <br><br>      
                  <label>Fecha Nacimiento</label>
  <input type="text" name="fechanacimiento" style="width:30%;" id="inputNombre" class="form-control" placeholder="apellido"><br> <br>
  <label>peso</label>
        <input type="text" name="peso" style="width:30%;" id="inputNombre" class="form-control" placeholder="apellido"><br> <br>
         <select name="input">
                         <c:forEach items="<%=doctores%>" var="doctores">
                         <option value="${raza.getId()}">${raza.getNombre()}</option>
                         </c:forEach>
          </select>               
    </div>       
         <div class="form-group">
        <button type="submit" class="btn btn-default" tabindex="3">Crear</button>
    </div>
            </form>
</div>