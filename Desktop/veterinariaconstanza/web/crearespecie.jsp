<%-- 
    Document   : especie
    Created on : 31-mar-2015, 5:15:50
    Author     : victor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="teplate/header.jsp"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<link rel="stylesheet" href="css/formulariocss.css" />      
<div id="contenedor">
    
           
         <form class="form-horizontal" action="/veterinariaconstanza/EspecieControl" method="post">
     <div class="form-group">
        <label>Especie</label>
        <input type="text" name="nombre" style="width:30%;" id="inputNombre" class="form-control" placeholder="nombre"><br> <br>
         
    </div>
         <div class="form-group">
        <button type="submit" class="btn btn-default" tabindex="3">Crear</button>
    </div>
            </form>
</div>
        <jsp:include page="teplate/footer.jsp"/>     
