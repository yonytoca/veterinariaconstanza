<%-- 
    Document   : index1
    Created on : 25/03/2015, 08:58:07 PM
    Author     : EDUARDO
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="org.cfg.uapa.java.veterinaria.servicios.ServicioPais"%>
<%@page import="java.util.List"%>
<%@page import="org.cfg.uapa.java.veterinaria.entidades.Pais"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<link rel="stylesheet" href="dist/css/formulariocss.css" />

 <%
   List<Pais> pais = ServicioPais.getInstancia().getListadoPais();

%>
<centers>
         <h3>MANTENIMIENTO DE CLIENTE</h3>
        
        <div id="contenedor">          
            <form action="/veterinariaconstanza/ClienteControl"  method="post">
              
                
                 <div class="table-responsive">
                       <table class="table table-striped">
                          
                  <tbody>
                    <tr>
                        <td>Nombre:</td>
                        <td> <input type="text" name="nombre" required="" /> 
                        </td> <td>Apellido:</td>
                        <td> <input type="text" name="apellido" required="" /> </td>
                    </tr>
                    <tr>                        
                        <td>Teléfono:</td>
                        <td> <input type="text" name="telefono" required="" /> </td>
                        <td>Calle:</td>
                        <td> <input type="text" name="calle" required="" /> </td>
                    </tr>
                    <tr>                     
                         <td>Apartamento:</td>
                        <td> <input type="text" name="apartamento" required="" /> </td>                       
                         <td>País:</td>
                        <td>                         
                   <select name="inputPais">
                         <c:forEach items="<%=pais%>" var="pais">
                         <option value="${pais.getId()}">${pais.getDescripcion()}</option>
                         </c:forEach>
                  </select>
                        </td>
                    </tr>                  
                    <tr>
                        <td>Ciudad:</td>
                        <td> <input type="text" name="ciudad" required="" /> </td>
                       
                    </tr>                   
                    <tr>  
                        <td>Usuario:</td>
                        <td> <input type="text" name="usuario" required="" /> </td>
                    </tr>
                    <tr>
                        <td>Clave:</td>
                        <td> <input type="password" name="clave" required="" /> </td>
                    </tr> 
                    </tbody>
            </table>  
               <input type="submit" class="styled-button-1" value="Enviar" />
            </form>

        </div>
                </centers>>

