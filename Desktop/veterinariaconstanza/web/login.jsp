<%-- 
    Document   : login
    Created on : 24-mar-2015, 5:47:13
    Author     : victor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel=\"stylesheet\" type=\"text/css\" href=\"ccs/loginccs.css\"/>
    </head>
    <body>
    <center>
    <div class="row">
        <div class="col-sm-6 col-md-4 col-md-offset-4">
            <h1 class="text-center login-title">Entrar al sistema</h1>
            <div class="account-wall">
                <img class="profile-img" src="https://lh5.googleusercontent.com/-b0-k99FZlyE/AAAAAAAAAAI/AAAAAAAAAAA/eu7opA4byxI/photo.jpg?sz=120"
                    alt="">
                <form class="form-signin">
                    <input type="text" class="form-control" placeholder="Email" required autofocus><br><br>
                <input type="password" class="form-control" placeholder="Password" required><br><br>
                 <label class="checkbox pull-left">
                    <input type="checkbox" value="remember-me">
                    Recordame   
                </label>
                <button class="btn btn-lg btn-primary btn-block" type="submit">Entrar</button><br>
               
                <a href="#" class="pull-right need-help">Nesecita ayuda? </a><span class="clearfix"></span>
                </form>
            </div>
            <a href="#" class="text-center new-account">Crear una Cuenta </a>
        </div>
    </div>
</div>
</center>
    </body>
</html>
