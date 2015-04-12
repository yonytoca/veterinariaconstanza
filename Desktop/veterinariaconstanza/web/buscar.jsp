<%-- 
    Document   : buscar
    Created on : 10/04/2015, 12:52:29 AM
    Author     : EDUARDO
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="org.cfg.uapa.java.veterinaria.servicios.ServicioCliente"%>
<%@page import="org.cfg.uapa.java.veterinaria.entidades.Cliente"%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="teplate/header.jsp"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
    <head>
        <script src="http://code.jquery.com/jquery-latest.min.js"></script> 
<style>
.resaltar{background-color:#b5cfd2;}
.Estilo1 {color: #005500;}
</style> 
        
  <script type='text/javascript' >
    $.expr[':'].icontains = function(obj, index, meta, stack){
    return (obj.textContent || obj.innerText || jQuery(obj).text() || '').toLowerCase().indexOf(meta[3].toLowerCase()) >= 0;
    };
    $(document).ready(function(){   
        $('#buscador').keyup(function(){
                     buscar = $(this).val();
                     $('#lista tr').removeClass('resaltar');
                            if(jQuery.trim(buscar) != ''){
                               $("#lista tr:icontains('" + buscar + "')").addClass('resaltar');
                            }
            });
    });   
 </script>
 <%
    List<Cliente> cliente = ServicioCliente.getInstancia().getListadoCliente();   
 %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <center>
<h2 class="sub-header">Clientes</h2>

<p>Buscar  »<input name="buscador" id="buscador" type="text" /></p>

<table id="lista" class="Estilo1" >
    <tr align="left" valign="top"><th>Codigo</th><th>Nombre</th><th>Apellido</th><th>Telefono</th><th>Calle</th><th>Apartamento</th><th>Ciudad</th><th>Pais</th></tr>    
     <c:forEach items="<%=cliente%>" var="cliente">
        <tr align="left" valign="top"><td>${cliente.getId()}</td><td>${cliente.getNombre()}</td><td>${cliente.getApellido()}</td><td>${cliente.getTelefono()}</td><td>${cliente.getCalle()}</td><td>${cliente.getApartamento()}</td><td>${cliente.getCiudad()}</td><td>${cliente.getPais_id().getDescripcion()}</td></tr>
    </c:forEach>
</table>
</center>
<a href="crearcliente.jsp"> Agregar Cliente</a>
    </body>
    
</html>
