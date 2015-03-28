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
        
             
        <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css">
            input{
                border-radius:10px;
                box-shadow:0px 0px 25px rgba(30,144,255,0.3) inset;
                width: 200px;
                height: 30px;
                padding: 5px;
                margin: 5px;

            }
            #contenedor{
                width: 700px;
                border: 1px solid rgba(255,255,255,0.4);
                padding: 20px;
                margin: 50px;
                border-radius: 25px 25px 25px 25px;
                box-shadow:0px 10px 25px #0066cc;
                border-color: #ffffff;

            }
            td{
                text-align: right;
                font-size: 25px italic;

            }

        </style>
    </head>
    <body>

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
</body>

</html>
<jsp:include page="teplate/footer.jsp"/>
 