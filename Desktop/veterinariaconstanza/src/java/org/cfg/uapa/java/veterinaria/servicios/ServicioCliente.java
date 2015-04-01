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
import java.text.MessageFormat;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.cfg.uapa.java.veterinaria.entidades.Cliente;

/**
 *
 * @author victor
 */
public class ServicioCliente {      
       
      private static final ServicioCliente INSTANCIA = new ServicioCliente();
    
    public static ServicioCliente getInstancia(){
        return INSTANCIA;
    }

public ServicioCliente(){
    
}    

    public Cliente checkCliente(String usuario, String clave) {

        Connection con = Coneccion.getInstancia().getConeccion();
        Cliente usuario1 = null;

        try (PreparedStatement pstmt = con.prepareStatement("select * from cliente where usuario = ? and clave= ?")) {

            pstmt.setString(1, usuario);
            pstmt.setString(2, clave);

            try (ResultSet rs = pstmt.executeQuery()) {
                System.out.println("usuario: " + usuario + " clave : " + clave);

                if (rs.next()) {

                    usuario1 = new Cliente();                                   
                    usuario1.setUsuario(rs.getString("usuario"));
                    usuario1.setClave(rs.getString("clave"));

                }
            }

        } catch (SQLException e) {
            Logger.getLogger(getClass().getName()).info(MessageFormat.format("Error en el SQl{0}", e.getMessage()));
            return null;
        }

        return usuario1;
    }

     public boolean crearCliente(Cliente  cliente) {

        boolean estado = false;
        PreparedStatement stmt = null ;
        String sql = "insert into cliente(nombre,apellido,telefono,calle,apartamento,ciudad,pais_id,usuario,clave) values(?,?,?,?,?,?,?,?,?)";
        
         Connection con = Coneccion.getInstancia().getConeccion();

        try {

             stmt = con.prepareStatement(sql);
             stmt.setString(1, cliente.getNombre());
             stmt.setString(2,cliente.getApellido());
             stmt.setString(3,cliente.getTelefono());
             stmt.setString(4,cliente.getCalle());
             stmt.setString(5,cliente.getApartamento());
             stmt.setString(6,cliente.getCiudad());
             stmt.setInt(7, cliente.getPais_id().getId());            
             stmt.setString(8, cliente.getUsuario());
             stmt.setString(9,cliente.getClave());
            
        

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
     
