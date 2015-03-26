/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.cfg.uapa.java.veterinaria.modelos;

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
public class ModeloCita {
    

    private static final ModeloCita INSTANCIA = new ModeloCita();
    
    public static ModeloCita getInstancia(){
        return INSTANCIA;
        
    }
     private ModeloCita() { }
    
    public List<Cita> getListadoCita() {

        List<Cita> lista = new ArrayList<>();

        String sql = "select * from cita";

        Connection con = Coneccion.getInstancia().getConeccion();
        Statement stmt = null;
        ResultSet rs = null;

        try {

            stmt = con.createStatement();
            rs = stmt.executeQuery(sql);

            while (rs.next()) {
               
                Cita cita = new Cita();
                cita.setId(rs.getInt("codigo_cita"));
                cita.setFecha(rs.getString("fecha"));
               

                lista.add(cita);
            }

        } catch (SQLException e) {
            Logger.getLogger(ModeloCita.class.getName()).log(Level.SEVERE, null, e);
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
                Logger.getLogger(ModeloCita.class.getName()).log(Level.SEVERE, null, e);
            }
        }

        return lista;
    }
    
    public boolean crearCiudad(Cita cita) {

        boolean estado = false;
        PreparedStatement stmt = null ;
        String sql = "insert into ciudades(nombre,codigo_pais) values(?,?)";
        
         Connection con = Coneccion.getInstancia().getConeccion();

        try {

             stmt = con.prepareStatement(sql);
             stmt.setString(1, cita.getFecha());
             stmt.setInt(2, cita.getDoctor_id().getId());

            stmt.executeUpdate();
            
            estado = true;

        } catch (SQLException e) {
            estado = false;
             Logger.getLogger(ModeloCita.class.getName()).log(Level.SEVERE, null, e);
        }finally{
            if (stmt != null) {
                try {
                    stmt.close();
                } catch (SQLException ex) {
                    Logger.getLogger(ModeloCita.class.getName()).log(Level.SEVERE, null, ex);
                }
                }
        }
        
        return estado;

    }   
     
}
