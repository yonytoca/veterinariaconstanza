<%-- 
    Document   : newjsp
    Created on : 26-mar-2015, 2:42:10
    Author     : victor
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="org.cfg.uapa.java.veterinaria.servicios.ServicioCliente"%>
<%@page import="java.util.List"%>
<%@page import="org.cfg.uapa.java.veterinaria.entidades.Cliente"%>
<link rel="stylesheet" href="css/combo.css" /> 
<jsp:include page="teplate/header.jsp"/>
<%
    List<Cliente> clientes = ServicioCliente.getInstancia().getListadoCliente();
   
%>


<div class="stylo-combos">
    <select>
        <option>Here is the unstyled select box</option>
        <option>The second option</option>
        <option>The third option</option>
    </select>
</div>



<hr>

<div class="styled-select slate">
    <select name="inputddd" >
        <option><c:forEach items="<%=clientes%>" var="clientes">
            <option value="${clientes.getId()}">${clientes.getNombre()}</option>
        </c:forEach></option>        
    </select>
</div>

<hr>

<div class="styled-select black rounded">
    <select>
        <option>jjjjjj</option>
        <option>The second option</option>
        <option>The third option</option>
    </select>
</div>

<div class="styled-select green rounded">
    <select>
        <option>kkkk</option>        
    </select>
</div>

<div class="styled-select blue semi-square">
    <select>
        <option>Here is the first option</option>
        <option>The second option</option>
        <option>The third option</option>
    </select>
</div>

<div class="styled-select yellow rounded">
    <select>
        <option>Here is the first option</option>
        <option>The second option</option>
        <option>The third option</option>
    </select>
</div>

<hr>

<div id="mainselection">
    <select>
        <option>Select an Option</option>
        <option>Option 1</option>
        <option>Option 2</option>
    </select>
</div>

<hr>

<select id="soflow">
    <!-- This method is nice because it doesn't require extra div tags, but it also doesn't retain the style across all browsers. -->
    <option>Select an Option</option>
    <option>Option </option>
    <option>Option 2</option>
</select>

<select id="soflow-color">    <!-- This method is nice because it doesn't require extra div tags, but it also doesn't retain the style across all browsers. -->
   
        <option><c:forEach items="<%=clientes%>" var="clientes">
            <option value="${clientes.getId()}">${clientes.getNombre()}</option>
        </c:forEach></option> 
</select>
<jsp:include page="teplate/footer.jsp"/>