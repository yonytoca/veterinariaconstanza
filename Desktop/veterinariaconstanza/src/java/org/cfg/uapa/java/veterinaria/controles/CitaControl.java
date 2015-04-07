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
import org.cfg.uapa.java.veterinaria.entidades.Cita;
import org.cfg.uapa.java.veterinaria.servicios.ServicioCita;

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
        
        String fecha = request.getParameter("fecha");
        String paciente = request.getParameter("paciente");
        String razon = request.getParameter("razon");
        String doctor = request.getParameter("doctor");
        
        
        Cita cita =  ServicioCita.getInstancia().getCitaPorId(Integer.valueOf(Cita));
        
        Cita cita = new Cita();
        cita.setFecha(fecha);
        cita.setPaciente_id(paciente);
        cita.setRazon(razon);
        cita.setDoctor_id(doctor);
    }
    }
