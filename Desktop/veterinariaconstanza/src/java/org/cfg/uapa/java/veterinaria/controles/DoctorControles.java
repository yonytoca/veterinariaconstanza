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
import org.cfg.uapa.java.veterinaria.entidades.Doctor;
import org.cfg.uapa.java.veterinaria.servicios.ServicioDoctor;

/**
 *
 * @author victor
 */
public class DoctorControles extends HttpServlet {
    

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        String nombre = request.getParameter("inputNombre");
        String apellido = request.getParameter("inputapellido");

       
        Doctor doctor = new Doctor();
        doctor.setNombre(nombre);
        doctor.setApellido(apellido);
        
        
        boolean isCreado = ServicioDoctor.getInstancia().crearDoctor(doctor);

        if (isCreado) {

            response.sendRedirect("doctor.jsp");

        } else {

            response.sendRedirect("creardoctor.jsp");

        }
}
}