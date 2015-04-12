/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.cfg.uapa.java.veterinaria.controles;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.cfg.uapa.java.veterinaria.entidades.Cliente;
import org.cfg.uapa.java.veterinaria.entidades.Doctor;
import org.cfg.uapa.java.veterinaria.entidades.Paciente;
import org.cfg.uapa.java.veterinaria.entidades.Raza;
import org.cfg.uapa.java.veterinaria.servicios.ServicioCliente;
import org.cfg.uapa.java.veterinaria.servicios.ServicioDoctor;
import org.cfg.uapa.java.veterinaria.servicios.ServicioPaciente;
import org.cfg.uapa.java.veterinaria.servicios.ServicioRaza;

/**
 *
 * @author EDUARDO
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
     * @throws java.text.ParseException
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ParseException {
        
        String clientes = request.getParameter("inputcliente");
        String nombre = request.getParameter("nombre");
        String genero = request.getParameter("genero");
        String raza = request.getParameter("inputraza");
        String fnacimiento = request.getParameter("fnacimiento");   
        int peso = Integer.parseInt(request.getParameter("peso")); 
        
        
        String doc = request.getParameter("inputdoctor");       
       
        
        
        Cliente cliente = ServicioCliente.getInstancia().getClientePorId(Integer.valueOf(clientes));
        Doctor doctor = ServicioDoctor.getInstancia().getDoctorPorId(Integer.valueOf(doc));
        Raza razas = ServicioRaza.getInstancia().getRazaporId(Integer.valueOf(raza));
        
        Paciente paciente = new Paciente();
        paciente.setCliente_id(cliente);
        paciente.setNombre(nombre);
        paciente.setGenero(genero);
        paciente.setRaza_id(razas);
        paciente.setFecha_nacimiento(fnacimiento);
        paciente.setPeso(peso);
        paciente.setDoctor_id(doctor);
        
        
       
        boolean isCreado = ServicioPaciente.getInstancia().crearPaciente(paciente);

        if (isCreado) {

            response.sendRedirect("paciente.jsp");

        } else {

            response.sendRedirect("crearpaciente.jsp");

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
        try {
            processRequest(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(PacienteControl.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(PacienteControl.class.getName()).log(Level.SEVERE, null, ex);
        }
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
