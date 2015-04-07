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
import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.cfg.uapa.java.veterinaria.entidades.Cliente;
import org.cfg.uapa.java.veterinaria.entidades.Paciente;

/**
 *
 * @author victor
 */
public class ServicioCliente {      
       
         private static ServicioCliente INSTANCIA = null;

    public static ServicioCliente getInstancia() {
        if (INSTANCIA == null) {
            INSTANCIA = new ServicioCliente();
        }
        return INSTANCIA;
    }

    public List<Cliente> getListadoCliente() throws SQLException {

       List<Cliente> Listacliente = new ArrayList<>();

        try (PreparedStatement stmt = Coneccion.getInstancia().getConeccion().prepareStatement("select * from cliente")) 
        {
            try (ResultSet rs = stmt.executeQuery()) {

                while (rs.next()) {
                    Cliente cliente = new Cliente();
                    cliente.setId(rs.getInt("id"));
                    cliente.setNombre(rs.getString("nombre"));
                    cliente.setApellido(rs.getString("apellido"));  
                    
                    Listacliente.add(cliente);
                 }
            }

        } catch (SQLException ex) {
            Logger.getLogger(ServicioPais.class.getName()).log(Level.SEVERE, null, ex);          
        }

        return Listacliente;
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
      
      public Cliente getClientePorId(int id) {

        String sql = "select * from cliente where id=?";

        Connection con = Coneccion.getInstancia().getConeccion();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        Cliente cliente = null;

        try {

            stmt = con.prepareStatement(sql);
            stmt.setInt(1, id);

            rs = stmt.executeQuery();

            rs.next();
            cliente = new Cliente();
            cliente.setId(rs.getInt("id"));           
            cliente.setNombre(rs.getString("nombre"));
        } catch (SQLException e) {
            Logger.getLogger(ServicioCliente.class.getName()).log(Level.SEVERE, null, e);
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
                Logger.getLogger(ServicioCliente.class.getName()).log(Level.SEVERE, null, e);
            }
        }

        return cliente;
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
     
