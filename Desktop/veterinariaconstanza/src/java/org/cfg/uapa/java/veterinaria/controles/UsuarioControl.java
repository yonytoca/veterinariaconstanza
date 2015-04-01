/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.cfg.uapa.java.veterinaria.controles;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.cfg.uapa.java.veterinaria.entidades.Cliente;
import org.cfg.uapa.java.veterinaria.servicios.ServicioCliente;

/**
 *
 * @author victor
 */
@WebServlet(name = "UsuarioControl",urlPatterns = "/UsuarioControl" )
public class UsuarioControl extends HttpServlet {
    
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      doPost(request, response);
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       
     String usuario = request.getParameter("usuario");
     String clave = request.getParameter("clave");
     System.out.println("Usuario: " + usuario + " clave : " + clave);

    //Hacer una consulta a la base de datos para determinar si el usuario esta registrado       
     ServicioCliente m = new ServicioCliente();
     Cliente  usu =  m.checkCliente(usuario,clave);
         
    //Creando session    
    HttpSession session = request.getSession(true); 
        
     if(usu instanceof Cliente){
         System.out.println("Usuario registrado");
        
         
         session.setAttribute("currentSessionUser",usu); 
         response.sendRedirect("index.jsp");
         
     }else{
      
          
         System.out.println("Usuario no registrado");
        //Enviando mensaje a la pagina de login
         session.setAttribute("loginFailed","Usuario no registrado"); 
         response.sendRedirect("login.jsp");
         
     }
}
}