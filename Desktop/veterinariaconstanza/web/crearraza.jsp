<%-- 
    Document   : crearraza
    Created on : 06/04/2015, 10:41:06 PM
    Author     : EDUARDO
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="org.cfg.uapa.java.veterinaria.servicios.ServicioPais"%>
<%@page import="org.cfg.uapa.java.veterinaria.entidades.Pais"%>
<%@page import="org.cfg.uapa.java.veterinaria.servicios.ServicioEspecie"%>
<%@page import="org.cfg.uapa.java.veterinaria.entidades.Especie"%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<jsp:include page="teplate/header.jsp"/>
<link rel="stylesheet" href="css/formulariocss.css" />
 <%
   List<Especie> especie = ServicioEspecie.getInstancia().getListadoEspecie();

%>


<h3>MANTENIMIENTO DE Raza</h3>
      
        <div id="contenedor">          
          <form action="/veterinariaconstanza/RazaControl"  method="post">
            <div class="form-group">
               <label>Nombre</label>
               <input type="text" name="nombre" style="width:30%;" id="inputNombre" class="form-control" placeholder="nombre"><br> <br>
                 <select name="inputespecie">
                     <c:forEach items="<%=especie%>" var="especie">
                         <option value="${especie.getId()}">${especie.getNombre()}</option>
                     </c:forEach>
                 </select>
            </div>       
            <div class="form-group">
                <button type="submit" class="btn btn-default" tabindex="3">Crear</button>
            </div>
          </form>
        <div    
<jsp:include page="teplate/footer.jsp"/>