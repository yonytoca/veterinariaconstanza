/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.cfg.uapa.java.veterinaria.modelos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.cfg.uapa.java.veterinaria.entidades.Cliente;

/**
 *
 * @author EDUARDO
 */
public class ModeloCliente {
    private static final ModeloCliente INSTANCIA = new ModeloCliente();
    
    public static ModeloCliente getInstancia(){
        return INSTANCIA;
}
    private ModeloCliente (){}

    public List<Cliente> getListadoClientes() {

        List<Cliente> lista = new ArrayList<Cliente>();

        String sql = "select * from cliente";

        Connection con = Coneccion.getInstancia().getConeccion();
        Statement stmt = null;
        ResultSet rs = null;

        try {

            stmt = con.createStatement();
            rs = stmt.executeQuery(sql);

            while (rs.next()) {
               
                Cliente cliente = new Cliente();
                cliente.setId(rs.getInt("id"));
                cliente.setNombre(rs.getString("nombre"));
                cliente.setPais(ModeloPais.getInstancia().getPaisPorId(rs.getInt("pais_id")));
                Cliente Cliente = null;

                lista.add(Cliente);
            }

        } catch (SQLException e) {
            Logger.getLogger(ModeloCliente.class.getName()).log(Level.SEVERE, null, e);
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
                Logger.getLogger(ModeloCliente.class.getName()).log(Level.SEVERE, null, e);
            }
        }

        return lista;
    }
    
    public boolean crearCliente(Cliente cliente) {

        boolean estado = false;
        PreparedStatement stmt = null ;
        String sql = "insert into cliente(nombre,apellido) values(?,?)";
        
         Connection con = Coneccion.getInstancia().getConeccion();

        try {

             stmt = con.prepareStatement(sql);
             stmt.setString(1, cliente.getNombre());
             stmt.setString(2, cliente.getApellido());

            stmt.executeUpdate();
            
            estado = true;

        } catch (SQLException e) {
            estado = false;
             Logger.getLogger(ModeloCliente.class.getName()).log(Level.SEVERE, null, e);
        }finally{
            if (stmt != null) {
                try {
                    stmt.close();
                } catch (SQLException ex) {
                    Logger.getLogger(ModeloPais.class.getName()).log(Level.SEVERE, null, ex);
                }
                }
        }
        
        return estado;

    }
}
