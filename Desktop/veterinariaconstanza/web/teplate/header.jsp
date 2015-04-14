<%@page import="org.cfg.uapa.java.veterinaria.entidades.Cliente"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="content-type" content="text/html; charset=UTF-8">
		<meta charset="utf-8">
		<title>Veterinaria constanza</title>
		<meta name="generator" content="Bootply" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<!--[if lt IE 9]>
			<script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
		<link href="css/styles.css" rel="stylesheet">
	</head>
	<body>
            <div id="wrapper">
            <% Cliente currentUser =  (Cliente) session.getAttribute("currentSessionUser");%>
          
            <div id="top">
                <div class="content_pad">
                    <ul class="right">                     
                         
                        
                            <% if (session.getAttribute("currentSessionUser").equals(null)){%>
                            <a href="login.jsp"> </a>
                            <%}
                                else{%>
                            <a href="logaut.jsp"> </a>
                            <%}
                            %>
                        
                           
                    </ul>
                </div>
                <!-- .content_pad -->
            </div>
        </div>
<!-- header -->
<div id="top-nav" class="navbar navbar-inverse navbar-static-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.jsp">Veterinaria Constanza</a>
        </div>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a class="dropdown-toggle" role="button" data-toggle="dropdown" href="#"><i class="glyphicon glyphicon-user"></i> Bienvenido <span class="caret"></span><%= currentUser.getNombre() + " " + currentUser.getApellido() %></a>
                    <ul id="g-account-menu" class="dropdown-menu" role="menu">
                        <li><a href="#">My Profile</a></li>
                    </ul>
                </li>
                <li><a href="logaut.jsp"><i class="glyphicon glyphicon-lock"></i> Logout</a></li>
            </ul>
        </div>
    </div>
    <!-- /container -->
</div>
<!-- /Header -->

<!-- Main -->
<div class="container-fluid">
    <div class="row">
        <div class="col-sm-3">
            <!-- Left column -->
            <a href="#"><strong><i class="glyphicon glyphicon-wrench"></i>Menu</strong></a>

            <hr>

            <ul class="nav nav-stacked">
                <li class="nav-header"> 
                    <ul class="nav nav-stacked collapse in" id="userMenu">
                        <li class="active"> <a href="#"><i class="glyphicon glyphicon-home"></i> Inicio</a></li>
                        <li><a href="cliente.jsp"><i class="glyphicon glyphicon-cog"></i> Cliente</a></li>
                        <li><a href="paciente.jsp"><i class="glyphicon glyphicon-cog"></i> Paciente</a></li>
                        <li><a href="doctor.jsp"><i class="glyphicon glyphicon-comment"></i> Doctor</a></li>
                        <li><a href="raza.jsp"><i class="glyphicon glyphicon-user"></i> Raza</a></li>
                        <li><a href="especie.jsp"><i class="glyphicon glyphicon-flag"></i> Especies</a></li>
                        <li><a href="cita.jsp"><i class="glyphicon glyphicon-exclamation-sign"></i>Cita</a></li>
                        <li><a href="logaut.jsp"><i class="glyphicon glyphicon-off"></i> Logout</a></li>
                    </ul>
                </li>          
            </ul>

  

           
        </div>
        <!-- /col-3 -->
        <div class="col-sm-9">

            <!-- column 2 -->
            <ul class="list-inline pull-right">
                <li><a href="#"><i class="glyphicon glyphicon-cog"></i></a></li>
                

               
            </ul>
            <a href="index.jsp"><strong><i class="glyphicon glyphicon-dashboard"></i> Mi Cuenta</strong></a>
            <hr>

            <div class="row">
                <!-- center left-->