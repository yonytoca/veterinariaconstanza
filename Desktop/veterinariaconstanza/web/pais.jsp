<%-- 
    Document   : pais
    Created on : 31-mar-2015, 3:24:12
    Author     : victor
--%>

<%@page import="java.util.LinkedList"%>
<%@page import="org.cfg.uapa.java.veterinaria.servicios.ServicioPais"%>
<%@page import="java.util.List"%>
<%@page import="org.cfg.uapa.java.veterinaria.entidades.Pais"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    List<Pais> listaPaises = ServicioPais.getInstancia().getPaises();
    
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <p>Tiene <%=listaPaises.size()%> paises</p>
      
    <h1>Consulta a base de datos</h1>
<table border="1">
<tr>
<td>id</td>
<td>nombre</td>
<td>apellido</td>
<td>telefono</td>
</tr>
<%
LinkedList<Pais> lista = ServicioPais.getInstancia();
for (int i=0;i<lista.size();i++)
{
   out.println("<tr>");
   out.println("<td>"+lista.get(i).getId()+"</td>");
   out.println("<td>"+lista.get(i).getNombre()+"</td>");
   out.println("<td>"+lista.get(i).getApellido()+"</td>");
   out.println("<td>"+lista.get(i).getTelefono()+"</td>");
   out.println("</tr>");
}
%>
</table>
    </body>
</html>
