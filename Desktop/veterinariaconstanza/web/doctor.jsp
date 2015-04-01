<%-- 
    Document   : doctor
    Created on : 24-mar-2015, 4:50:01
    Author     : victor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="teplate/header.jsp"/>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Doctor</title>
   
    
</h1><a href="creardoctor.jsp"> Agregar Doctor</a></h1>
   <form class="form-horizontal" action="/veterinariaconstanza/DoctorControl" method="post">
     <div class="form-group">
        <label>Nombre</label>
        <input type="text" name="imputnombre" style="width:30%;" id="inputNombre" class="form-control" placeholder="nombre"><br> <br>
         <label>Apellido</label>
        <input type="text" name="imputapellido" style="width:30%;" id="inputNombre" class="form-control" placeholder="nombre"><br> <br>
         
    </div>
         <div class="form-group">
        <button type="submit" class="btn btn-default" tabindex="3">Crear</button>
    </div>
            </form>
    


<jsp:include page="teplate/footer.jsp"/>
        