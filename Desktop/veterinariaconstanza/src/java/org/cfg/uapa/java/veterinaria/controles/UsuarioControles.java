/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.cfg.uapa.java.veterinaria.controles;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.cfg.uapa.java.veterinaria.entidades.Usuario;
import org.cfg.uapa.java.veterinaria.modelos.ModeloUsuario;

/**
 *
 * @author victor
 */
public class UsuarioControles extends HttpServlet{
     protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        String usuario = request.getParameter("inputusuario");
        String pass = request.getParameter("inputclave");

       
        Usuario usuarios = new Usuario();
        usuarios.setUsuario(usuario);
        usuarios.setPass(pass);
        
        
     
}
}

