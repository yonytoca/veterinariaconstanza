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
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.cfg.uapa.java.veterinaria.entidades.Paciente;

/**
 *
 * @author victor
 */
public class ServicioPaciente {
    
    private static final ServicioPaciente INSTANCIA = new ServicioPaciente();
    public static ServicioPaciente getInstancia(){
        return INSTANCIA;
        
    }
     private ServicioPaciente(){
     }

    public List<Paciente> getListadoPaciente() throws SQLException {

       List<Paciente> Listapaciente = new ArrayList<>();

        try (PreparedStatement stmt = Coneccion.getInstancia().getConeccion().prepareStatement("select * from paciente")) {
            try (ResultSet rs = stmt.executeQuery()) {

                while (rs.next()) {
                    Paciente pacientes = new Paciente();
                    pacientes.setId(rs.getInt("id"));                   
                    pacientes.setCliente_id(ServicioCliente.getInstancia().getClientePorId(rs.getInt("cliente_id")));                  
                    pacientes.setNombre(rs.getString("nombre"));
                    pacientes.setGenero(rs.getString("genero"));
                    pacientes.setRaza_id(ServicioRaza.getInstancia().getRazaporId(rs.getInt("raza_id")));
                    pacientes.setFecha_nacimiento(rs.getString("fecha_nacimiento"));
                    //pacientes.setPesos(rs.getString("peso"));
                    pacientes.setPeso(rs.getInt("peso"));
                    pacientes.setDoctor_id(ServicioDoctor.getInstancia().getDoctorPorId(rs.getInt("doctor_id")));
                 
                    Listapaciente.add(pacientes);
                 }
            }

            
        } catch (SQLException ex) {
            Logger.getLogger(ServicioPaciente.class.getName()).log(Level.SEVERE, null, ex);          
        }

        return Listapaciente;
    }
    



    public Paciente getPacientePorId(int id) {

        String sql = "select * from paciente where id=?";

        Connection con = Coneccion.getInstancia().getConeccion();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        Paciente paciente = null;

        try {

            stmt = con.prepareStatement(sql);
            stmt.setInt(1, id);

            rs = stmt.executeQuery();

            rs.next();
            paciente = new Paciente();
            paciente.setId(rs.getInt("id"));           
            paciente.setNombre(rs.getString("nombre"));
        } catch (SQLException e) {
            Logger.getLogger(ServicioPais.class.getName()).log(Level.SEVERE, null, e);
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
                Logger.getLogger(ServicioPais.class.getName()).log(Level.SEVERE, null, e);
            }
        }

        return paciente;
    }
    public boolean crearPaciente(Paciente  paciente) {

        boolean estado = false;
        PreparedStatement stmt = null ;
        String sql = "insert into paciente(cliente_id,nombre,genero,raza_id,fecha_nacimiento,peso,doctor_id) values(?,?,?,?,?,?,?)";
        
         Connection con = Coneccion.getInstancia().getConeccion();

        try {

             stmt = con.prepareStatement(sql);
             stmt.setInt(1,paciente.getCliente_id().getId());
             stmt.setString(2, paciente.getNombre());
             stmt.setString(3,paciente.getGenero());
             stmt.setInt(4,paciente.getRaza_id().getId());
             stmt.setString(5,paciente.getFecha_nacimiento());            
             stmt.setInt(6, paciente.getPeso());
             stmt.setInt(7,paciente.getDoctor_id().getId());
            

            stmt.executeUpdate();
            
            estado = true;

        } catch (SQLException e) {
            estado = false;
             Logger.getLogger(ServicioCliente.class.getName()).log(Level.SEVERE, null, e);
        }finally{
            if (stmt != null) {
                try {
                    stmt.close();
                } catch (SQLException ex) {
                    Logger.getLogger(ServicioCliente.class.getName()).log(Level.SEVERE, null, ex);
                }
                
                }
               }
        
        return estado;

    }   
   
}

