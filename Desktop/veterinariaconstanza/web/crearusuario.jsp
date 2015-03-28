<%-- 
    Document   : crearusuario
    Created on : 25-mar-2015, 3:42:41
    Author     : victor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="teplate/header.jsp"/>
  <form class="form-horizontal" action="/veterinariaconstanza/DoctorControles" method="post">
     <div class="form-group">
        <label>suario</label>
        <input type="text" name="inputnombre" style="width:30%;" id="inputNombre" class="form-control" placeholder="nombre"><br> <br>
         <label>Apellido</label>
        <input type="text" name="inputapellido" style="width:30%;" id="inputNombre" class="form-control" placeholder="apellido"><br> <br>
    </div>
         <div class="form-group">
        <button type="submit" class="btn btn-default" tabindex="3">Crear</button>
    </div>
      <jsp:include page="teplate/footer.jsp"/>