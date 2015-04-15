
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
            <label>Cliente</label><br>
            <select id="combos" name="inputcliente" style="width:30%;">               
                <option><c:forEach items="<%=clientes%>" var="clientes">
                    <option value="${clientes.getId()}">${clientes.getNombre()}</option>
                </c:forEach></option> 
            </select>
            <div>
                <label>Nombre</label>
                <input type="text" name="nombre" style="width:30%;" id="inputNombre" class="form-control" placeholder="nombre">
            </div>
            <div>
                <label>Genero</label>
                <input type="text" name="genero" style="width:30%;" id="inputNombre" class="form-control" placeholder="genero">
            </div>
            
            <div>
                <label>Raza</label><br>             
                <select id="combos" name="inputraza" style="width:30%;">
                    <c:forEach items="<%=razas%>" var="razas">
                        <option value="${razas.getId()}">${razas.getNombre()}</option>
                    </c:forEach>
                </select> 
            </div>
           
            
            <div class="fecha">
                    <label>Fecha Nacimiento</label>
                    <div id="datetimepicker2" class="input-append">
                        <input data-format="yyyy/MM/dd" type="text" name="fnacimiento"style="width:30%;"></input>
                        <span class="add-on">
                            <i data-time-icon="icon-time" data-date-icon="icon-calendar">
                            </i>
                        </span>
                    </div>
            </div>
                <script type="text/javascript">
                    $(function () {
                        $('#datetimepicker2').datetimepicker({
                            language: 'en',
                            pick12HourFormat: false
                        });
                    });
                </script>
            <div>
                <label>Peso</label><br>
                 <div class="input-icon">
            <i class="icon-user"></i>
            <input type="text" name="peso" style="width:30%;" class="form-control" placeholder="Peso" data-rule-required="true"/>
                 </div>
                
            </div>
            <div>
                <label>Doctor</label><br>
                <select id="combos" name="inputdoctor" style="width:30%;">
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