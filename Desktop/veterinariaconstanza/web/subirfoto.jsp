<%-- 
    Document   : subirfoto
    Created on : 13-abr-2015, 0:03:36
    Author     : victor
--%>

<%@page import="jdk.nashorn.internal.ir.RuntimeNode.Request"%>
<%@page import="org.apache.tomcat.util.http.fileupload.FileItem"%>
<%@page import="org.apache.tomcat.util.http.fileupload.FileUploadException"%>
<%@page import="org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory"%>
<%@ page import="java.util.*" %> 
<%@ page import="java.io.*" %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">

<%@ page import="java.util.*" %> 

<%@ page import="java.io.*" %> 

<%
String ubicacionArchivo = "/veterinariaconstanza/imgpaciente";

DiskFileItemFactory factory = new DiskFileItemFactory();
factory.setSizeThreshold(1024); 
factory.setRepository(new File(ubicacionArchivo));

ServletFileUpload upload = new ServletFileUpload(factory);

try
{
List<FileItem> partes = upload.parseRequest(request);

for(FileItem item : partes)
{
File file = new File( ubicacionArchivo, item.getName() );
item.write(file);
}
out.write("El archivo se a subido correctamente") ;
}
catch(FileUploadException ex)
{
out.write("Error al subir archivo "+ex.getMessage());
}
%>