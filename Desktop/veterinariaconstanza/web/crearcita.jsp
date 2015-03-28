<%-- 
    Document   : crearcita
    Created on : 24-mar-2015, 2:29:19
    Author     : victor
--%>
<jsp:include page="teplate/header.jsp"/>

<%@page import="org.cfg.uapa.java.veterinaria.entidades.Cita"%>
<%@page import="org.cfg.uapa.java.veterinaria.modelos.ModeloCita"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ page import="java.util.List"%>
<%@ page import="org.cfg.uapa.java.veterinaria.modelos.ModeloDoctor"%>
<%@ page import="org.cfg.uapa.java.veterinaria.entidades.Doctor"%>


<%
    List<Cita> Citas = ModeloCita.getInstancia().getListadoCita();

%>
        
             
      
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/formulariocss.css" />
   
    <center>
        <h3>MANTENIMIENTO DE CITAS</h3>
        <hr color="#003399"/>
        <div id="contenedor">
            <form action="/veterinariaconstanza/CitaControles" method="post">
                <table>

                    <tr>
                        <td>Fecha:</td>
                        <td> <input type="text" name="inputFecha" required="" maxlength="5" /> 
                        </td> <td>Paciente:</td>
                        
                        <td> <input type="text" name="inputPaciente" required=""></td>
                    </tr>
                    <tr>                        
                        <td>Razón:</td>
                        <td> <input type="text" name="inputRazon" required="" /> </td>
                    </tr>
                         
 
                    <tr>
                        <td></td>
                        <td> <hr><button type="submit" class="btn btn-orange" tabindex="3">Aceptar</button></td>
                    </tr>            
            </table>  
            </form>

        </div>

    </center>

<jsp:include page="teplate/footer.jsp"/>
 