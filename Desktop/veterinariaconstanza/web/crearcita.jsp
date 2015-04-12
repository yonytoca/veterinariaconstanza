<%-- 
    Document   : crearcita
    Created on : 24-mar-2015, 2:29:19
    Author     : EDUARDO
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="org.cfg.uapa.java.veterinaria.servicios.ServicioPaciente"%>
<%@page import="org.cfg.uapa.java.veterinaria.entidades.Paciente"%>
<jsp:include page="teplate/header.jsp"/>

<%@page import="org.cfg.uapa.java.veterinaria.entidades.Cita"%>
<%@page import="org.cfg.uapa.java.veterinaria.servicios.ServicioCita"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ page import="java.util.List"%>
<%@ page import="org.cfg.uapa.java.veterinaria.servicios.ServicioDoctor"%>
<%@ page import="org.cfg.uapa.java.veterinaria.entidades.Doctor"%>

<%
    List<Paciente> paciente = ServicioPaciente.getInstancia().getListadoPaciente();
    List<Doctor> doctor = ServicioDoctor.getInstancia().getListadoDoctores();
%>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
<link rel="stylesheet" href="css/formulariocss.css" />

<center>
    <h3>MANTENIMIENTO DE CITAS</h3>
    <hr color="#003399"/>
    <div id="contenedor">
        <form action="/veterinariaconstanza/CitaControl" method="post">
            <table>

                <tr>
                    <td>Fecha:</td>
                <td> <div class="fecha">
                    <div id="datetimepicker2" class="input-append">
                        <input data-format="yyyy/MM/dd HH:mm:ss" type="text" name="inputFecha"></input>
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
                </script> </td>
                
                <td>Paciente:</td>                        
                <td> 
                    <select name="inputpaciente">
                        <c:forEach items="<%=paciente%>" var="paciente">
                            <option value="${paciente.getId()}">${paciente.getNombre()}</option>
                        </c:forEach>
                    </select>
                </td>
                </tr>
                <tr>                        
                    <td>Razón:</td>
                    <td> <input type="text" name="razon" required="" /> </td>
                    <td>Doctor:</td>
                    <td> 
                        <select name="inputdoctor">
                            <c:forEach items="<%=doctor%>" var="doctor">
                                <option value="${doctor.getId()}">${doctor.getNombre()}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>


                <tr>
                    <td></td>
                    <td> <hr><button type="submit" class="btn btn-orange" tabindex="3">Aceptar</button></td>
                </tr>            
            </table>                
        </form>          
    </div>

</center>
<jsp:include page="teplate/footer.jsp"/>
