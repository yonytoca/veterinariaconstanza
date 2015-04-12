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
<div id="wrapper">
            <% Cliente currentUser =  (Cliente) session.getAttribute("currentSessionUser");%>
            <div id="top">
                <div class="content_pad">
                    <ul class="right">
                        <li>
                            <span class="ui-icon ui-icon-person"></span>
                            Bienvenido
                            <%= currentUser.getNombre() + " " + currentUser.getApellido() %>
                        </li>
                         
                        <li>
                            <% if (session.getAttribute("currentSessionUser").equals("")){%>
                            <a href="login.jsp"> Login</a>
                            <%}
                                else{%>
                            <a href="logout.jsp"> 
                                <b>Logout</b></a>
                            <%}
                            %>
                        </li>
                    </ul>
                </div>
                <!-- .content_pad -->
            </div>
        </div>
<jsp:include page="teplate/footer.jsp"/>