/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.cfg.uapa.java.veterinaria.servicios;

/**
 *
 * @author victor
 */
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.cfg.uapa.java.veterinaria.entidades.Cita;
import org.cfg.uapa.java.veterinaria.entidades.Doctor;

public class ServicioCita {    

    private static ServicioCita INSTANCIA = null;
    
    public static ServicioCita getInstancia(){
       
         if (INSTANCIA == null) {
            INSTANCIA = new ServicioCita();
          }
          return INSTANCIA;
        
    }
     private ServicioCita() { }
    
    public List<Cita> getListadoCita() {

        List<Cita> lista = new ArrayList<>();
       

        try {
         Statement stmt = (Statement) Coneccion.getInstancia().getConeccion();
        ResultSet rs = stmt.executeQuery("select * from cita");         

            while (rs.next()) {               
                Cita cita = new Cita();
                cita.setId(rs.getInt("id"));
                cita.setFecha(rs.getString("fecha"));
                cita.setPaciente_id(ServicioPaciente.getInstancia().getPacientePorId(rs.getInt("paciente_id")));
                cita.setDoctor_id(ServicioDoctor.getInstancia().getDoctorPorId(rs.getInt("doctor_id")));
                
                lista.add(cita);
            }

       
            } catch (SQLException e) {
                Logger.getLogger(ServicioCita.class.getName()).log(Level.SEVERE, null, e);
            }
        

        return lista;
    }
    
    public boolean crearCita(Cita cita) {

        boolean estado = false;
        PreparedStatement stmt = null ;
        String sql = "insert into cita(fecha,paciente_id,doctor_id,razon) values(?,?,?,?)";
        
         Connection con = Coneccion.getInstancia().getConeccion();

        try {

             stmt = con.prepareStatement(sql);
             stmt.setString(1, cita.getFecha());
             stmt.setInt(2, cita.getPaciente_id().getId());
             stmt.setInt(3, cita.getDoctor_id().getId());
             stmt.setString(4, cita.getRazon());

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
