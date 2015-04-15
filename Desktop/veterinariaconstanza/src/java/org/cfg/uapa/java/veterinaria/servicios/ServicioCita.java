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

public class ServicioCita {    
    private static final ServicioCita INSTANCIA = new ServicioCita();

    private ServicioCita() {
    }

    public static ServicioCita getInstancia() {
        return INSTANCIA;
    }    
    
    public List<Cita> getListadoCita() {

        List<Cita> listacita = new ArrayList<>();
       

         try (PreparedStatement stmt = Coneccion.getInstancia().getConeccion().prepareStatement("select * from cita")) {
            try (ResultSet rs = stmt.executeQuery()) {      

            while (rs.next()) {               
                Cita cita = new Cita();
                cita.setId(rs.getInt("id"));
                cita.setFecha(rs.getString("fecha"));
                cita.setPaciente_id(ServicioPaciente.getInstancia().getPacientePorId(rs.getInt("paciente_id")));
                cita.setDoctor_id(ServicioDoctor.getInstancia().getDoctorPorId(rs.getInt("doctor_id")));
                cita.setRazon(rs.getString("razon"));
                listacita.add(cita);
            }
         }
       
            } catch (SQLException e) {
                Logger.getLogger(ServicioCita.class.getName()).log(Level.SEVERE, null, e);
            }
        

        return listacita;
    }
    
     public Cita getCitaPorId(int id) {

        String sql = "select * from cita where id=?";

        Connection con = Coneccion.getInstancia().getConeccion();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        Cita citas = null;

        try {

            stmt = con.prepareStatement(sql);
            stmt.setInt(1, id);

            rs = stmt.executeQuery();

            rs.next();
            citas = new Cita();
            citas.setId(rs.getInt("id"));  
            citas.setFecha(rs.getString("fecha"));
            citas.setPaciente_id(ServicioPaciente.getInstancia().getPacientePorId(rs.getInt("paciente_id")));
            citas.setDoctor_id(ServicioDoctor.getInstancia().getDoctorPorId(rs.getInt("doctor_id")));
            citas.setRazon(rs.getString("razon"));
            
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

        return citas;
    }
      
    
     public List<Cita> getListadoAgenda(int id) {


        List<Cita> listaagenda = new ArrayList<>();

                 try (PreparedStatement stmt = Coneccion.getInstancia().getConeccion().prepareStatement("select doctor.nombre, cita.id, cita.fecha, cita.razon from cita, doctor where cita.doctor_id = doctor.id=4")) {
            try (ResultSet rs = stmt.executeQuery()) {      

            while (rs.next()) {               
                Cita cita = new Cita();
                cita.setId(rs.getInt("id"));
                cita.setFecha(rs.getString("fecha"));
                cita.setPaciente_id(ServicioPaciente.getInstancia().getPacientePorId(rs.getInt("paciente_id")));
                cita.setDoctor_id(ServicioDoctor.getInstancia().getDoctorPorId(rs.getInt("doctor_id")));
                cita.setRazon(rs.getString("razon"));
                listaagenda.add(cita);
            }
         }
       
            } catch (SQLException e) {
                Logger.getLogger(ServicioCita.class.getName()).log(Level.SEVERE, null, e);
            }
        

        return listaagenda;
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
    public boolean editarCita(Cita  cita) {

        boolean estado;
        //PreparedStatement stmt = null ;
        String sql = "update cita set fecha = ?,paciente_id = ?,doctor_id = ?,razon = ? where id = ?";

        Connection con = Coneccion.getInstancia().getConeccion();

        try (PreparedStatement stmt = con.prepareStatement(sql)) {

            //stmt = con.prepareStatement(sql);
            stmt.setString(1, cita.getFecha());
            stmt.setInt(2, cita.getPaciente_id().getId());
            stmt.setInt(3, cita.getDoctor_id().getId());
            stmt.setString(4, cita.getRazon());
            stmt.setInt(5,cita.getId());

            stmt.executeUpdate();

            estado = true;

        } catch (SQLException e) {
            estado = false;
            Logger.getLogger(ServicioCita.class.getName()).log(Level.SEVERE, null, e);
        }

        return estado;

    
    }   
     

     
}
