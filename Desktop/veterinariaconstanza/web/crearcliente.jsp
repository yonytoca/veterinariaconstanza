<%-- 
    Document   : index1
    Created on : 25/03/2015, 08:58:07 PM
    Author     : EDUARDO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="teplate/header.jsp"/>
<link rel="stylesheet" href="css/formulariocss.css" />
    
          <h3>MANTENIMIENTO DE CLIENTE</h3>
        
        <div id="contenedor">          
            <form action="" method="post">
                <table>

                    <tr>
                        <td>Nombre:</td>
                        <td> <input type="text" name="inputNombre" required="" maxlength="5" /> 
                        </td> <td>Apellido:</td>
                        <td> <input type="text" name="inputApellido" required="" /> </td>
                    </tr>
                    <tr>                        
                        <td>Teléfono:</td>
                        <td> <input type="text" name="inputTelefono" required="" /> </td>
                        <td>Calle:</td>
                        <td> <input type="text" name="inputCalle" required="" /> </td>
                    </tr>
                    <tr>
                        <td>Calle:</td>
                        <td> <input type="text" name="inputCalle" required="" /> </td>
                         <td>Apartamento:</td>
                        <td> <input type="text" name="inputApartamento" required="" /> </td>
                    </tr>                  
                    <tr>
                        <td>Ciudad:</td>
                        <td> <input type="text" name="inputCiudad" required="" /> </td>
                        <td>País:</td>
                        <td> <input type="text" name="inputPais" required="" /> </td>
                    </tr>                   
                    <tr>  
                        <td>Usuario:</td>
                        <td> <input type="text" name="inputUsuario" required="" /> </td>
                    </tr>
                    <tr>
                        <td>Clave:</td>
                        <td> <input type="password" name="txtcla" required="" /> </td>
                    </tr>                               
            </table>  
               <input type="submit" class="styled-button-1" value="Enviar" />
            </form>

        </div>


<jsp:include page="teplate/footer.jsp"/>