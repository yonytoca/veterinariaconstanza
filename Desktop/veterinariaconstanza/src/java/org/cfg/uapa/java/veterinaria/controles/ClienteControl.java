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
import org.cfg.uapa.java.veterinaria.entidades.Cliente;
import org.cfg.uapa.java.veterinaria.entidades.Pais;
import org.cfg.uapa.java.veterinaria.servicios.ServicioCliente;
import org.cfg.uapa.java.veterinaria.servicios.ServicioPais;

/**
 *
 * @author victor
 */
@WebServlet(name = "ClienteControl",urlPatterns = "/ClienteControl" )
public class ClienteControl extends HttpServlet { 

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      doPost(request, response);
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    
        String nombre = request.getParameter("Nombre");
        String apellido = request.getParameter("Apellido");
        String telefono = request.getParameter("Telefono");
        String calle = request.getParameter("Calle"); 
        String apartamento = request.getParameter("Apartamento");
        String ciudad = request.getParameter("Ciudad");
        String Pais = request.getParameter("pais_id");     
        String usuario = request.getParameter("usuario");
        String clave = request.getParameter("clave");
        
         Pais pais =  ServicioPais.getInstancia().getPaisPorId(1);      
        
        Cliente cliente = new Cliente();        
        cliente.setNombre(nombre);
        cliente.setApellido(apellido);
        cliente.setTelefono(telefono);
        cliente.setCalle(calle);
        cliente.setApartamento(apartamento);
        cliente.setCiudad(ciudad);
        cliente.setPais_id(pais);
        cliente.setUsuario(usuario);
        cliente.setClave(clave);        
      
        boolean isCreado = ServicioCliente.getInstancia().crearCliente(cliente);
       

        if (isCreado) {

            response.sendRedirect("login.jsp");

        } else {

            response.sendRedirect("crearcliente.jsp");

        }
    
}
      

}
