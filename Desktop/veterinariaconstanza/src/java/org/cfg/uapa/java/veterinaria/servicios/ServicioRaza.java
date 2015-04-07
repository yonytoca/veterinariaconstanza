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
import org.cfg.uapa.java.veterinaria.entidades.Raza;

/**
 *
 * @author EDUARDO
 */
public class ServicioRaza {
    private static ServicioRaza INSTANCIA = null;

    public static ServicioRaza getInstancia() {
        if (INSTANCIA == null) {
            INSTANCIA = new ServicioRaza();
        }
        return INSTANCIA;
    }

    public List<Raza> getListadoRaza() throws SQLException {

       List<Raza> Listaraza = new ArrayList<>();

        try (PreparedStatement stmt = Coneccion.getInstancia().getConeccion().prepareStatement("select * from raza")) 
        {
            try (ResultSet rs = stmt.executeQuery()) {

                while (rs.next()) {
                    Raza raza = new Raza();
                    raza.setId(rs.getInt("id"));
                    raza.setNombre(rs.getString("nombre"));
                    raza.setEspecie_id(ServicioEspecie.getInstancia().getEspeciePorId(rs.getInt("especie")));
                    
                    Listaraza.add(raza);
                 }
            }

        } catch (SQLException ex) {
            Logger.getLogger(ServicioRaza.class.getName()).log(Level.SEVERE, null, ex);          
        }

        return Listaraza;
    }
    public Raza getRazaporId(int id){
    String sql = "select * from raza where id=?";
    Connection con = Coneccion.getInstancia().getConeccion();
    PreparedStatement stmt = null;
    ResultSet rs = null;
    Raza raza = null;
    try{
    stmt = con.prepareStatement(sql);
            stmt.setInt(1, id);

            rs = stmt.executeQuery();
            rs.next();
            raza = new Raza();
            raza.setId(rs.getInt("id"));           
            raza.setNombre(rs.getString("nombre"));
        } catch (SQLException e) {
            Logger.getLogger(ServicioRaza.class.getName()).log(Level.SEVERE, null, e);
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
                Logger.getLogger(ServicioRaza.class.getName()).log(Level.SEVERE, null, e);
            }
        

        return raza;
    }
    }

    
    
    public boolean crearRaza(Raza raza) {

        boolean estado = false;
        PreparedStatement stmt = null ;
        String sql = "insert into raza(nombre,especied_id) values(?,?)";
        
         Connection con = Coneccion.getInstancia().getConeccion();

        try {

             stmt = con.prepareStatement(sql);
             stmt.setString(1, raza.getNombre());
             stmt.setInt(2,raza.getEspecie_id().getId());
        

            stmt.executeUpdate();
            
            estado = true;

        } catch (SQLException e) {
            estado = false;
             Logger.getLogger(ServicioRaza.class.getName()).log(Level.SEVERE, null, e);
        }finally{
            if (stmt != null) {
                try {
                    stmt.close();
                } catch (SQLException ex) {
                    Logger.getLogger(ServicioRaza.class.getName()).log(Level.SEVERE, null, ex);
                }
                
                }
               }
        
        return estado;

    }   
    
    }
   