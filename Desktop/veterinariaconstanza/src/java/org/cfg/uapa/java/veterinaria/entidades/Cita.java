/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.cfg.uapa.java.veterinaria.entidades;

/**
 *
 * @author victor
 */
public class Cita {
    
   private int  id;
  private String fecha;  
  private Paciente paciente_id;
  private Doctor doctor_id ;
  private String razon; 

    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * @return the fecha
     */
    public String getFecha() {
        return fecha;
    }

    /**
     * @param fecha the fecha to set
     */
    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    /**
     * @return the paciente_id
     */
    public int getPaciente_id() {
        return paciente_id;
    }

    /**
     * @param paciente_id the paciente_id to set
     */
    public void setPaciente_id(int paciente_id) {
        this.paciente_id = paciente_id;
    }

    /**
     * @return the doctor_id
     */
    public int getDoctor_id() {
        return doctor_id;
    }

    /**
     * @param doctor_id the doctor_id to set
     */
    public void setDoctor_id(int doctor_id) {
        this.doctor_id = doctor_id;
    }

    /**
     * @return the razon
     */
    public String getRazon() {
        return razon;
    }

    /**
     * @param razon the razon to set
     */
    public void setRazon(String razon) {
        this.razon = razon;
    }
    
    

}
