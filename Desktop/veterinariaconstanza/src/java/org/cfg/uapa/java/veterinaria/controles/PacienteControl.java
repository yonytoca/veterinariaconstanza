/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.cfg.uapa.java.veterinaria.controles;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.cfg.uapa.java.veterinaria.entidades.Cliente;
import org.cfg.uapa.java.veterinaria.entidades.Paciente;
import org.cfg.uapa.java.veterinaria.servicios.ServicioCliente;

/**
 *
 * @author victor
 */
@WebServlet(name = "PacienteControl", urlPatterns = {"/PacienteControl"})
public class PacienteControl extends HttpServlet {

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
        String clientes = request.getParameter("inputcliente");
        String nombre = request.getParameter("nombre");
        String genero = request.getParameter("genero");
         String raza = request.getParameter("inputraza");
        String fnacimiento = request.getParameter("fechanacimiento");
        String peso = request.getParameter("peso");       
        String doctor = request.getParameter("inputdoctor");       
       
        
        
        Cliente cliente = ServicioCliente.getInstancia().getClientePorId(Integer.valueOf(clientes));
        
        
        Paciente paciente = new Paciente();
        paciente.setCliente_id(cliente);
        paciente.setNombre(nombre);
        paciente.setGenero(genero);
        paciente.setRaza_id(raza);
        paciente.setFecha_nacimiento(fnacimiento);
        paciente.setPeso(peso);
        paciente.setDoctor_id(doctor);
        
       
        boolean isCreado = ServicioCliente.getInstancia().crearCliente(cliente);

        if (isCreado) {

            response.sendRedirect("index.jsp");

        } else {

            response.sendRedirect("login.jsp");

        }
        
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
