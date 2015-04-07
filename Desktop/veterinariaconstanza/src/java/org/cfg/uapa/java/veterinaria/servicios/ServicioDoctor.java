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
     private ServicioDoctor(){
     }
    
    public List<Doctor> getListadoDoctores() {

        List<Doctor> lista = new ArrayList<>();
      

        try { 
            Statement stmt = Coneccion.getInstancia().getConeccion().createStatement();
          ResultSet rs = stmt.executeQuery("select * from doctor");
          

            while (rs.next()) {
               
                Doctor doc = new Doctor();  
                doc.setId(rs.getInt("id"));
                doc.setNombre(rs.getString("nombre"));           
                doc.setApellido(rs.getString("apellido"));
                lista.add(doc);
            }

         } catch (SQLException e) {
            System.out.println("Error en el SQl");
        }

        return lista;

    }
    
     public Doctor getDoctorPorId(int id) {

        String sql = "select * from doctor where id=?";

        Connection con = Coneccion.getInstancia().getConeccion();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        Doctor doctor = null;

        try {

            stmt = con.prepareStatement(sql);
            stmt.setInt(1, id);

            rs = stmt.executeQuery();

            rs.next();
            doctor = new Doctor();
            doctor.setId(rs.getInt("id"));           
            doctor.setNombre(rs.getString("nombre"));
        } catch (SQLException e) {
            Logger.getLogger(ServicioDoctor.class.getName()).log(Level.SEVERE, null, e);
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
                Logger.getLogger(ServicioDoctor.class.getName()).log(Level.SEVERE, null, e);
            }
        }

        return doctor;
    }
    
    public boolean crearDoctor(Doctor doctor) {

        boolean estado = false;
        PreparedStatement stmt = null ;
        String sql = "insert into doctor(nombre,apellido) values(?,?)";
        
         Connection con = Coneccion.getInstancia().getConeccion();

        try {

            stmt = con.prepareStatement(sql);
            stmt.setString(1, doctor.getNombre());
            stmt.setString(2,doctor.getApellido());
          
            

            stmt.executeUpdate();
            
            estado = true;

        } catch (SQLException e) {
            estado = false;
             Logger.getLogger(ServicioDoctor.class.getName()).log(Level.SEVERE, null, e);
        }finally{
            if (stmt != null) {
                try {
                    stmt.close();
                } catch (SQLException ex) {
                    Logger.getLogger(ServicioDoctor.class.getName()).log(Level.SEVERE, null, ex);
                }
                }
        }
        
        return estado;

    }
    
    
    
}

  
    


