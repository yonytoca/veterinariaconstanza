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
     public static ServicioEspecie getInstancia(){
        return INSTANCIA;
    }

  private ServicioEspecie() {
    }
 public List<Especie> getListadoEspecie() {

        List<Especie> lista = new ArrayList<>();

      

        try {
             Statement stmt =Coneccion.getInstancia().getConeccion().createStatement();
                ResultSet rs= stmt.executeQuery("select * from especie");
               
               
                Especie especies = new Especie();
                especies.setId(rs.getInt("id"));
                especies.setNombre(rs.getString("nombre")); 
                lista.add(especies);
           
            } catch (SQLException e) {
                Logger.getLogger(ServicioCita.class.getName()).log(Level.SEVERE, null, e);
            }
        

        return lista;
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
    
    
    
}

  
        

