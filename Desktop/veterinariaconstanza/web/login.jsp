<%-- 
    Document   : login
    Created on : 24-mar-2015, 19:51:44
    Author     : victor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <link href="css/logincss.css" rel="stylesheet">
         
    </head>
    <body>
        
         
             <div id="login">
            <% if(session.getAttribute("loginFailed") !=null) { %>
             
            <h1>
                <%=session.getAttribute("loginFailed")%>
            </h1>
             
            <% 
        }
        %>
       
        <div id="login_panel">
                <form class="form-vertical login-form" action="/veterinariaconstanza/UsuarioControl" method="post">
                
                    <div class="login_fields">
                        <div class="field">
                            <label for="email">Usuario</label>
                             
                            <input type="text" name="usuario" value="" id="usuario" tabindex="1"/>
                        </div>
                        <div class="field">
                            <label for="password">Clave</label>
                             
                            <input type="password" name="clave" value="" id="password" tabindex="2"/>
                        </div>
                        <a href="crearcliente.jsp"> Resgistrate</a>
                        <div>
                            
                        </div>       
                    </div>
                    <!-- .login_fields -->
                    <div class="login_actions">
                        <button type="submit" class="btn btn-orange" tabindex="3">Acceder</button>
                    </div>
                </form>
            <center>
        <h1>Veterinaria Constanza</h1>
        </center>
            </div>
            <!-- #login_panel -->
        </div>
        <!-- #login -->
    </body>
</html>
