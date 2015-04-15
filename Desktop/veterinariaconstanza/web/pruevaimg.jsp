<%-- 
    Document   : pruevaimg
    Created on : 14-abr-2015, 14:17:41
    Author     : victor
--%>

<%@page import="org.apache.tomcat.util.http.fileupload.RequestContext"%>
<%@page import="org.apache.tomcat.util.http.fileupload.FileItem"%>
<%@page import="org.apache.tomcat.util.http.fileupload.FileUploadException"%>
<%@page import="org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.tomcat.util.http.fileupload.FileItemFactory"%>
<%@page import="org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.io.File" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center><h1>Se ha subido satisfactoriamente</h1></center>
<%!
String nombre=""; 
String telefono="";
String email="";
String direccion1="";
String direccion2="";
int count1=0,count2=0,count3=0,count4=0,count5=0;
%>
<%
boolean isMultipart = ServletFileUpload.isMultipartContent(request);
if (!isMultipart) {
} else {
FileItemFactory factory = new DiskFileItemFactory();
ServletFileUpload upload = new ServletFileUpload(factory);
List items = null;
try {
items = upload.parseRequest((RequestContext) request);
} catch (FileUploadException e) {
e.printStackTrace();
}
Iterator itr = items.iterator();
while (itr.hasNext()) 
{
FileItem item = (FileItem) itr.next();
if (item.isFormField())
{
String name = item.getFieldName();
String value = item.getString();
if(name.equals("nombre"))
{
nombre=value;
count1=1;
}
if(name.equals("direccion1"))
{ 
direccion1=value; 
count2=2;
}
if(name.equals("direccion2"))
{ 
direccion2=value; 
count5=5;
}
if(name.equals("telefono"))
{
telefono=value;
count3=3;
}


if(name.equals("email"))
{
count4=4;
email=value;
} 





} else
{
try {


String itemName = item.getName();
File savedFile = new File(config.getServletContext().getRealPath("/")+"imagenes/"+itemName);
item.write(savedFile);
%><center></table><table ><tr><td width="210"></td><td> <img border="2"
src=imagenes/<%=itemName %> width="137" height="140"></td></tr></table><table
border="2" width="350">


<% if(count1==1)
out.println("<tr><td align='left'><b>Nombre:</td><td><b>"+nombre);
if(count2==2) 
out.println("</td><tr><td align='left'><b>Direccion:</td><td><b>"+direccion1);
if(count5==5) 
out.println("</td><tr><td align='left'><b></td><td><b>"+direccion2);
if(count3==3)
out.println("</td><tr><td align='left'><b>Telefono</td><td><b>"+telefono);
if(count4==4)
out.println("</td><tr><td align='left'><b>Email</td><td><b>"+email);
} catch (Exception e) {
e.printStackTrace();
}
}
}
}
%>
</td></tr></table></center>
</body>
</html>