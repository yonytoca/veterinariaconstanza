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
public class ClienteControl  extends HttpServlet {
        
 /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String telefono = request.getParameter("telefono");
        String calle = request.getParameter("calle");
        String apartamento = request.getParameter("apartamento");
        String ciudad = request.getParameter("ciudad");       
        String Pais = request.getParameter("inputPais");       
        String usuario = request.getParameter("usuario");
        String clave = request.getParameter("clave");
        
        

        Pais pais =  ServicioPais.getInstancia().getPaisPorId(Integer.valueOf(Pais));
        
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

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
