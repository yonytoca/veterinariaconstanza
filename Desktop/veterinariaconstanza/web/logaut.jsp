<%-- 
    Document   : logaut
    Created on : 12/04/2015, 06:29:57 PM
    Author     : EDUARDO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>

        <%session.invalidate();%>
        <div id="wrapper">
            <div id="top">
                <div class="content_pad">
                    <ul class="right">
                        <li>
                            Usted cerr&oacute; session. Favor pulsar
                            <a href="login.jsp">aqu&iacute;</a>
                            para acceder nuevamente.
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </body>    

</html>