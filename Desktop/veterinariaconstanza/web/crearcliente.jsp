<%-- 
    Document   : crearcliente
    Created on : 23/03/2015, 09:32:19 PM
    Author     : EDUARDO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <h1>Crear Cliente</h1>
       
        <form class="form-horizontal" action="/veterinariaconstanza/ClienteControl" method="post">
    <div class="form-group">
        <label>Nombre</label>
        <input type="text" name="inputNombre" style="width:20%;" id="inputNombre" class="form-control" placeholder="Nombre">
    </div> </br>
                <div class="form-group">
        <label>Apellido</label>
        <input type="text" name="inputApellido" style="width:30%;" id="inputNombre" class="form-control" placeholder="Nombre">
    </div>
                <div class="form-group">
        <label>Telefono</label>
        <input type="text" name="inputTelefono" style="width:15%;" id="inputNombre" class="form-control" placeholder="Nombre">
    </div>
                <div class="form-group">
        <label>Calle</label>
        <input type="text" name="inputCalle" style="width:10%;" id="inputNombre" class="form-control" placeholder="Nombre">
    </div>
                <div class="form-group">
        <label>Apartamento</label>
        <input type="text" name="inputApartamento" style="width:10%;" id="inputNombre" class="form-control" placeholder="Nombre">
    </div>
                <div class="form-group">
        <label>Ciudad</label>
        <input type="text" name="inputCiudad" style="width:40%;" id="inputNombre" class="form-control" placeholder="Nombre">
    </div>
                <div class="form-group">
        <label>Pais</label>
        <input type="text" name="inputPaisId" style="width:50%;" id="inputNombre" class="form-control" placeholder="Nombre">
    </div>
                <div class="form-group">
        <label>Usuario</label>
        <input type="text" name="inputUsuario" style="width:20%;" id="inputNombre" class="form-control" placeholder="Nombre">
    </div>
                <div class="form-group">
        <label>Clave</label>
        <input type="text" name="inputClave" style="width:25%;" id="inputNombre" class="form-control" placeholder="Nombre">
    </div>
            
    <div class="form-group">
        <button type="submit" class="btn btn-default" tabindex="3">Confirmar</button>
    </div>

</form>
    </body>
</html>


