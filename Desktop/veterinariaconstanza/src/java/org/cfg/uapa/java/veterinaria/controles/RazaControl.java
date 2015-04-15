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
import org.cfg.uapa.java.veterinaria.entidades.Raza;
import org.cfg.uapa.java.veterinaria.servicios.ServicioEspecie;
import org.cfg.uapa.java.veterinaria.servicios.ServicioRaza;


/**
 *
 * @author EDUARDO
 */
@WebServlet(name = "RazaControl", urlPatterns = {"/RazaControl"})
public class RazaControl extends HttpServlet {

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
                    String especies = request.getParameter("inputespecie");
                    
      Especie especie = ServicioEspecie.getInstancia().getEspeciePorId(Integer.valueOf(especies));
      
        Raza raza = new Raza();
        raza.setNombre(nombre);
        raza.setEspecie_id(especie);
       
       
        boolean isCreado = ServicioRaza.getInstancia().crearRaza(raza);

        if (isCreado) {

            response.sendRedirect("raza.jsp");

        } else {

            response.sendRedirect("crearraza.jsp");

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
