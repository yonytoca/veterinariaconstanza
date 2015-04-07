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
import org.cfg.uapa.java.veterinaria.entidades.Doctor;
import org.cfg.uapa.java.veterinaria.entidades.Paciente;
import org.cfg.uapa.java.veterinaria.entidades.Raza;
import org.cfg.uapa.java.veterinaria.servicios.ServicioCliente;
import org.cfg.uapa.java.veterinaria.servicios.ServicioDoctor;
import org.cfg.uapa.java.veterinaria.servicios.ServicioRaza;

/**
 *
 * @author victor
 */
@WebServlet(name = "PacienteControl", urlPatterns = {"/PacienteControl"})
public class PacienteControl extends HttpServlet {

 
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String clientes = request.getParameter("inputcliente");
        String nombre = request.getParameter("nombre");
        String genero = request.getParameter("genero");
         String raza = request.getParameter("inputraza");
        String fnacimiento = request.getParameter("fechanacimiento");
        String peso = request.getParameter("peso");       
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
        
       
        boolean isCreado = ServicioCliente.getInstancia().crearCliente(cliente);

        if (isCreado) {

            response.sendRedirect("index.jsp");

        } else {

            response.sendRedirect("login.jsp");

        }
        
    }
}