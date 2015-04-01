<%-- 
    Document   : doctor
    Created on : 24-mar-2015, 4:50:01
    Author     : victor
--%>

<%@page import="org.cfg.uapa.java.veterinaria.servicios.ServicioDoctor"%>
<%@page import="org.cfg.uapa.java.veterinaria.entidades.Doctor"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="teplate/header.jsp"/>
 <%
    List<Doctor> doctor = ServicioDoctor.getInstancia().getListadoDoctores();

%>

   <h2 class="sub-header">Doctores</h2>
<p>Tiene <%=doctor.size()%> paises</p>
<a href="agregardoctores.jsp"> Agregar Ciudad</a>



<jsp:include page="teplate/footer.jsp"/>
        