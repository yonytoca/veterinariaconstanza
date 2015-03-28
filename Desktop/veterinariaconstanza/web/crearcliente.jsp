<%-- 
    Document   : index1
    Created on : 25/03/2015, 08:58:07 PM
    Author     : EDUARDO
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
        <h3>MANTENIMIENTO DE CLIENTE</h3>
        <hr color="#003399"/>
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

                    <tr>
                        <td></td>
                        <td><hr><button type="submit" class="btn btn-orange" tabindex="3">Aceptar</button> </td>
                    </tr>            
            </table>  
            </form>

        </div>

    </center>
</body>

</html>