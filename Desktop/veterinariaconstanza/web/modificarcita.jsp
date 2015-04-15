<%-- 
    Document   : modificarcita
    Created on : 14-abr-2015, 16:53:57
    Author     : victor
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="org.cfg.uapa.java.veterinaria.servicios.ServicioCita"%>
<%@page import="org.cfg.uapa.java.veterinaria.entidades.Cita"%>
<%@page import="org.cfg.uapa.java.veterinaria.servicios.ServicioDoctor"%>
<%@page import="org.cfg.uapa.java.veterinaria.servicios.ServicioPaciente"%>
<%@page import="org.cfg.uapa.java.veterinaria.entidades.Doctor"%>
<%@page import="org.cfg.uapa.java.veterinaria.entidades.Paciente"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="teplate/header.jsp"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<%
    int id = Integer.parseInt(request.getParameter("id"));
    List<Paciente> paciente = ServicioPaciente.getInstancia().getListadoPaciente();
    List<Doctor> doctor = ServicioDoctor.getInstancia().getListadoDoctores();
    Cita cita = ServicioCita.getInstancia().getCitaPorId(id);
%>
<div id="contenedor">
    <form action="/veterinariaconstanza/EditarCitaControl" method="post">
        <table>
            <tr> <td> <input type="hidden" name="id" value="<%=cita.getId()%>" required="" /> </td></tr>
            <tr>

                <td>Fecha:</td>
                <td> <div class="fecha">
                        <div id="datetimepicker2" class="input-append">
                            <input data-format="yyyy/MM/dd HH:mm:ss"  value="<%=cita.getFecha()%>" type="text" name="fecha"></input>
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
                            </div> </td>

                <td>Paciente:</td>                        
                <td> 
                    <select name="paciente" id>


<!--<option value="<%=cita.getPaciente_id().getId()%>"><%=cita.getPaciente_id().getNombre()%></option>-->
                        <c:forEach items="<%=paciente%>" var="paciente">

                            <option value="${paciente.getId()}" ${paciente.getId()==cita.getPaciente().getId()?"enabled":""}>${paciente.getNombre()}</option>
                        </c:forEach>

                    </select>
                </td>
            </tr>
            <tr>                        
                <td>Razón:</td>
                <td> <input type="text" name="razon" value="<%=cita.getRazon()%>" required="" /> </td>
                <td>Doctor:</td>
                <td> 
                    <select name="doctor">
                        <option value="<%=cita.getDoctor_id().getId()%>"><%=cita.getDoctor_id().getNombre()%></option>
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

</form>
<jsp:include page="teplate/footer.jsp"/>