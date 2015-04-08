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
import org.cfg.uapa.java.veterinaria.entidades.Especie;

/**
 *
 * @author victor
 */
public class ServicioEspecie {
            private static final ServicioEspecie INSTANCIA = new ServicioEspecie();

    private ServicioEspecie() {
    }

    public static ServicioEspecie getInstancia() {
        return INSTANCIA;
    }

    public List<Especie> getListadoEspecie()  {

       List<Especie> ListaEspecie = new ArrayList<>();

        try (PreparedStatement stmt = Coneccion.getInstancia().getConeccion().prepareStatement("select * from especie")) 
        {
            try (ResultSet rs = stmt.executeQuery()) {

                while (rs.next()) {
                    Especie espec = new Especie();
                    espec.setId(rs.getInt("id"));                    
                    espec.setNombre(rs.getString("nombre"));                        
                    ListaEspecie.add(espec);
                 }
            }

        } catch (SQLException ex) {
            Logger.getLogger(ServicioEspecie.class.getName()).log(Level.SEVERE, null, ex);          
        }

        return ListaEspecie;
    }
    
    
    public boolean crearEspecie(Especie especie) {

        boolean estado = false;
        PreparedStatement stmt = null ;
        String sql = "insert into especie(nombre) values(?)";
        
         Connection con = Coneccion.getInstancia().getConeccion();

        try {

            stmt = con.prepareStatement(sql);
            stmt.setString(1, especie.getNombre());
          
            

            stmt.executeUpdate();
            
            estado = true;

        } catch (SQLException e) {
            estado = false;
             Logger.getLogger(ServicioEspecie.class.getName()).log(Level.SEVERE, null, e);
        }finally{
            if (stmt != null) {
                try {
                    stmt.close();
                } catch (SQLException ex) {
                    Logger.getLogger(ServicioEspecie.class.getName()).log(Level.SEVERE, null, ex);
                }
                }
        }
        
        return estado;

    }
    
    
    
     public Especie getEspeciePorId(int id) {

        String sql = "select * from especie where id=?";

        Connection con = Coneccion.getInstancia().getConeccion();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        Especie especie = null;

        try {

            stmt = con.prepareStatement(sql);
            stmt.setInt(1, id);

            rs = stmt.executeQuery();

            rs.next();
            especie = new Especie();
            especie.setId(rs.getInt("id"));           
            especie.setNombre(rs.getString("nombre"));
           
        } catch (SQLException e) {
            Logger.getLogger(ServicioEspecie.class.getName()).log(Level.SEVERE, null, e);
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
                Logger.getLogger(ServicioEspecie.class.getName()).log(Level.SEVERE, null, e);
            }
        }

        return especie;

     }
}

  
        

