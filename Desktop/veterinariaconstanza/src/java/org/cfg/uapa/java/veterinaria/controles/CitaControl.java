/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.cfg.uapa.java.veterinaria.controles;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.cfg.uapa.java.veterinaria.entidades.Cita;
import org.cfg.uapa.java.veterinaria.entidades.Doctor;
import org.cfg.uapa.java.veterinaria.entidades.Paciente;
import org.cfg.uapa.java.veterinaria.servicios.ServicioCita;
import org.cfg.uapa.java.veterinaria.servicios.ServicioDoctor;
import org.cfg.uapa.java.veterinaria.servicios.ServicioPaciente;

/**
 *
 * @author victor
 */
@WebServlet(name = "CitaControl", urlPatterns = {"/CitaControl"})
public class CitaControl extends HttpServlet {

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
       
        String fecha = request.getParameter("inoutfecha");          
        String pacientes = request.getParameter("inputpaciente");
        String razon = request.getParameter("razon");
        String doctore = request.getParameter("inputdoctor");
        
        Paciente paciente = ServicioPaciente.getInstancia().getPacientePorId(Integer.valueOf(pacientes));
        Doctor doctor = ServicioDoctor.getInstancia().getDoctorPorId(Integer.valueOf(doctore));
        
        Cita cita = new Cita();
        cita.setFecha(fecha);
        cita.setPaciente_id(paciente);
        cita.setRazon(razon);
        cita.setDoctor_id(doctor);
        
          boolean isCreado = ServicioCita.getInstancia().crearCita(cita);

        if (isCreado) {

            response.sendRedirect("cita.jsp");

        } else {

            response.sendRedirect("crearcita.jsp");

        
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
