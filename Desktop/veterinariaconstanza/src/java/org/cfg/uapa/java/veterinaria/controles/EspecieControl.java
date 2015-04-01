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
import org.cfg.uapa.java.veterinaria.entidades.Especie;
import org.cfg.uapa.java.veterinaria.servicios.ServicioEspecie;

/**
 *
 * @author victor
 */
@WebServlet(name = "EspecieControl",urlPatterns = "/EspecieControl" )
public class EspecieControl extends HttpServlet { 

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      doPost(request, response);
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
   
    String nombre = request.getParameter("imputNombre");       
       
        
        Especie especie = new Especie();        
        especie.setNombre(nombre);
            
      
       boolean isCreado = ServicioEspecie.getInstancia().crearEspecie(especie);
       
       

        if (isCreado) {

           response.sendRedirect("especie.jsp");

      } else {

          response.sendRedirect("crearespecie.jsp");

     }

    }     
    
}

