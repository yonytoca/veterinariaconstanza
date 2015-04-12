<!DOCTYPE html>
<html>
    <head>
       
        <title>Veterinaria Constanza</title>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <meta name="description" content="" />
        <meta name="keywords" content="" />
        <!--[if lte IE 8]><script src="css/ie/html5shiv.js"></script><![endif]-->
        <script src="js/jquery.min.js"></script>
        <script src="js/jquery.dropotron.min.js"></script>
        <script src="js/skel.min.js"></script>
        <script src="js/skel-layers.min.js"></script>
        <script src="js/init.js"></script>
        <noscript>
        <link rel="stylesheet" href="css/skel.css" />
        <link rel="stylesheet" href="css/style.css" />
        <link rel="stylesheet" href="css/style-desktop.css" />

        </noscript>
        <!--[if lte IE 8]><link rel="stylesheet" href="css/ie/v8.css" /><![endif]-->
        <!--[if lte IE 9]><link rel="stylesheet" href="css/ie/v9.css" /><![endif]-->
         <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <style>
.resaltar{background-color:white;}
.Estilo1 {color: #005500;}
</style> 
        
  <script type='text/javascript' >
    $.expr[':'].icontains = function(obj, index, meta, stack){
    return (obj.textContent || obj.innerText || jQuery(obj).text() || '').toLowerCase().indexOf(meta[3].toLowerCase()) >= 0;
    };
    $(document).ready(function(){   
        $('#buscador').keyup(function(){
                     buscar = $(this).val();
                     $('#lista tr').removeClass('resaltar');
                            if(jQuery.trim(buscar) != ''){
                               $("#lista tr:icontains('" + buscar + "')").addClass('resaltar');
                            }
            });
    });   
 </script>
    </head>



    <body  class="no-sidebar">
        <!-- Header -->
        <div id="header-wrapper">
            <div class="container">

                <!-- Header -->
                <header id="header">
                    <div class="inner">

                        <!-- Logo -->
                        <h1><a href="index.html" id="logo">Veterinaria Constanza</a></h1>

                        <!-- Nav -->
                        <nav id="nav">
                            <ul>
                                <li class="current_page_item"><a href="index.jsp">Inicio</a></li>
                                <li>
                                    <a href="">Servicios</a>
                                    <ul>
                                        <li><a href="crearcita.jsp">Crear Citas</a></li>
                                        <li><a href="cita.jsp">cita</a></li>                                
                                    </ul>
                                </li>
                                <li><a href="">Registros</a>
                                    <ul>
                                        <li><a href="creardoctor.jsp">Doctor</a></li>                             
                                        <li><a href="crearcliente.jsp">Cliente</a> </li> 
                                        <li><a href="crearpaciente.jsp">Paciente</a> </li>
                                         <li><a href="crearespecie.jsp">Especie</a> </li> 
                                        <li><a href="crearraza.jsp">Raza</a> </li> 
                                    </ul>
                                </li>        
                                </li>
                                <li><a href="">vista</a>
                                    <ul>
                                        <li><a href="doctor.jsp">Doctor</a> </li>
                                        <li><a href="cliente.jsp">Cliente</a></li> 
                                        <li><a href="paciente.jsp">Paciente</a></li>
                                         <li><a href="especie.jsp">Especie</a></li> 
                                        <li><a href="raza.jsp">Raza</a></li> 
                                    </ul>
                                </li>
                                 <li>
                                    <a href="buscar.jsp">Buscar</a>                                    
                                </li>
                                <li><a href="">Logaut</a></li>
                            </ul>
                        </nav>

                    </div>
                </header>
                


                              
