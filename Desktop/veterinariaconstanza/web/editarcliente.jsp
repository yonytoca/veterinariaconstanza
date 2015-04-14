<%-- 
    Document   : editarcliente
    Created on : 12/04/2015, 08:48:14 AM
    Author     : EDUARDO
--%>


<%@page import="org.cfg.uapa.java.veterinaria.servicios.ServicioCliente"%>
<%@page import="org.cfg.uapa.java.veterinaria.entidades.Cliente"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="org.cfg.uapa.java.veterinaria.servicios.ServicioPais"%>
<%@page import="java.util.List"%>
<%@page import="org.cfg.uapa.java.veterinaria.entidades.Pais"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<jsp:include page="teplate/header.jsp"/>
<link rel="stylesheet" href="css/formulariocss.css" />
 <%
   List<Pais> pais = ServicioPais.getInstancia().getListadoPais(); 
   int id = Integer.parseInt(request.getParameter("id"));
   Cliente cliente = ServicioCliente.getInstancia().getClientePorId(id);

%>
         <h3>ACTUALIZAR CLIENTE</h3>
        
        <div id="contenedor">          
            <form action="/veterinariaconstanza/EditarClienteControl" method="post">
                <table>
                    <tr>                    
                        <input type="hidden" name="id" value="<%=cliente.getId()%>" required="" /> 
                        <td>Nombre:</td>
                        <td> <input type="text" name="nombre" value="<%=cliente.getNombre()%>" required="" /> 
                        </td> <td>Apellido:</td>
                        <td> <input type="text" name="apellido" value="<%=cliente.getApellido()%>" required="" /> </td>
                    </tr>
                    <tr>                        
                        <td>Teléfono:</td>
                        <td> <input type="text" name="telefono" value="<%=cliente.getTelefono()%>" required="" /> </td>
                        <td>Calle:</td>
                        <td> <input type="text" name="calle" value="<%=cliente.getCalle()%>" required="" /> </td>
                    </tr>
                    <tr>                     
                         <td>Apartamento:</td>
                         <td> <input type="text" name="apartamento" value="<%=cliente.getApartamento()%>" required="" /> </td>                       
                         <td>País:</td>
                        <td>                         
                   <select name="inputPais" >
                         <c:forEach items="<%=pais%>" var="pais">                             
                             <option value="${pais.getId()}">${pais.getDescripcion()}</option>
                         </c:forEach>
                  </select>
                        </td>
                    </tr>                  
                    <tr>
                        <td>Ciudad:</td>
                        <td> <input type="text" name="ciudad" value="<%=cliente.getCiudad()%>" required="" /> </td>
                       
                    </tr>                   
                    <tr>  
                        <td>Usuario:</td>
                        <td> <input type="text" name="usuario" value="<%=cliente.getUsuario()%>" required="" /> </td>
                    </tr>
                    <tr>
                        <td>Clave:</td>
                        <td> <input type="password" name="clave" value="<%=cliente.getClave()%>" required="" /> </td>
                    </tr>                               
            </table>  
               <input type="submit" class="styled-button-1" value="Enviar" />
            </form>

        </div>
<jsp:include page="teplate/footer.jsp"/>
