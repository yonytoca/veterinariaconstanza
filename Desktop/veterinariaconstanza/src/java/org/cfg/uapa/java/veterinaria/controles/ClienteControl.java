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
import org.cfg.uapa.java.veterinaria.entidades.Cliente;
import org.cfg.uapa.java.veterinaria.modelos.ModeloCliente;

/**
 *
 * @author EDUARDO
 */
public class ClienteControl extends HttpServlet {
    
     protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        String nombre = request.getParameter("inputNombre");
        String apellido = request.getParameter("inputApellido");
 
        Cliente cliente = new Cliente();
        cliente.setNombre(nombre);
        cliente.setApellido(apellido);
        
        boolean isCreado = ModeloCliente.getInstancia().crearCliente(cliente);

        if (isCreado) {

            response.sendRedirect("cliente.jsp");

        } else {

            response.sendRedirect("crearcliente.jsp");

        }
    }

    
}
