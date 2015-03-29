/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.cfg.uapa.java.veterinaria.servicios;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.cfg.uapa.java.veterinaria.entidades.Doctor;

/**
 *
 * @author victor
 */
public class ServicioDoctor {

    
    
    private static final ServicioDoctor INSTANCIA = new ServicioDoctor();
    
    public static ServicioDoctor getInstancia(){
        return INSTANCIA;
        
    }
     private ServicioDoctor() { }
    
    public List<Doctor> getListadoDoctores() {

        List<Doctor> lista = new ArrayList<>();

        String sql = "select * from doctor";

        Connection con = Coneccion.getInstancia().getConeccion();
        Statement stmt = null;
        ResultSet rs = null;

        try {

            stmt = con.createStatement();
            rs = stmt.executeQuery(sql);

            while (rs.next()) {
               
                Doctor Doctor = new Doctor();
                Doctor.setNombre(rs.getString("nombre"));           
                Doctor.setApellido(rs.getString("apellido"));
               

                lista.add(Doctor);
            }

        } catch (SQLException e) {
            Logger.getLogger(ServicioCita.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (stmt != null) {
                    stmt.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                Logger.getLogger(ServicioCita.class.getName()).log(Level.SEVERE, null, e);
            }
        }

        return lista;
    }
    
    public boolean crearDoctor(Doctor Doctor) {

        boolean estado = false;
        PreparedStatement stmt = null ;
        String sql = "insert into doctor(nombre,apellido) values(?,?)";
        
         Connection con = Coneccion.getInstancia().getConeccion();

        try {

             stmt = con.prepareStatement(sql);
             stmt.setString(1, Doctor.getNombre());
             stmt.setString(2, Doctor.getApellido());         

            stmt.executeUpdate();
            
            estado = true;

        } catch (SQLException e) {
            estado = false;
             Logger.getLogger(ServicioCita.class.getName()).log(Level.SEVERE, null, e);
        }finally{
            if (stmt != null) {
                try {
                    stmt.close();
                } catch (SQLException ex) {
                    Logger.getLogger(ServicioCita.class.getName()).log(Level.SEVERE, null, ex);
                }
                }
        }
        
        return estado;

    }
    
    
    
}


