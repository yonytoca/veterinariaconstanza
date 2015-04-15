<%-- 
    Document   : cliente
    Created on : 24/03/2015, 12:59:18 AM
    Author     : EDUARDO
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="teplate/header.jsp"/>
<%@page import="org.cfg.uapa.java.veterinaria.servicios.ServicioCliente"%>
<%@page import="java.util.List"%>
<%@page import="org.cfg.uapa.java.veterinaria.entidades.Cliente"%>

<%
    List<Cliente> cliente = ServicioCliente.getInstancia().getListadoCliente();
%>
<center>
    <h2 class="sub-header">Clientes</h2>
</center>
   
    <div class="dataTable_wrapper">
        <table class="table table-striped table-bordered table-hover" id="dataTables-example">
          <thead>
                <tr><th>Codigo</th>
                    <th>Nombre</th>
                    <th>Apellido</th>
                    <th>Telefono</th>
                    <th>Calle</th>
                    <th>Apartamento</th>
                    <th>Ciudad</th>
                    <th>Pais</th>
                </tr>    
            </thead>
            <tbody>
                <c:forEach items="<%=cliente%>" var="cliente">
                    <tr><td>${cliente.getId()}</td><td>${cliente.getNombre()}</td><td>${cliente.getApellido()}</td><td>${cliente.getTelefono()}</td><td>${cliente.getCalle()}</td><td>${cliente.getApartamento()}</td><td>${cliente.getCiudad()}</td><td>${cliente.getPais_id().getDescripcion()}</td></tr>
                        </c:forEach>                         
            </tbody>
        </table>
    </div>



<jsp:include page="teplate/footer.jsp"/>