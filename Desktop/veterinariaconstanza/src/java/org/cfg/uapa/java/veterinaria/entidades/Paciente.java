/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.cfg.uapa.java.veterinaria.entidades;

/**
 *
 * @author Yanelkys
 */
public class Paciente {
  private int id ;
  private Cliente cliente_id;
  private String nombre;
  private String genero;
  private Raza raza_id;
  private String fecha_nacimiento;
  private int peso;
  private Doctor doctor_id;

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
     * @return the cliente_id
     */
    public Cliente getCliente_id() {
        return cliente_id;
    }

    /**
     * @param cliente_id the cliente_id to set
     */
    public void setCliente_id(Cliente cliente_id) {
        this.cliente_id = cliente_id;
    }

    /**
     * @return the nombre
     */
    public String getNombre() {
        return nombre;
    }

    /**
     * @param nombre the nombre to set
     */
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    /**
     * @return the genero
     */
    public String getGenero() {
        return genero;
    }

    /**
     * @param genero the genero to set
     */
    public void setGenero(String genero) {
        this.genero = genero;
    }

    /**
     * @return the raza_id
     */
    public Raza getRaza_id() {
        return raza_id;
    }

    /**
     * @param raza_id the raza_id to set
     */
    public void setRaza_id(Raza raza_id) {
        this.raza_id = raza_id;
    }

    /**
     * @return the fecha_nacimiento
     */
    public String getFecha_nacimiento() {
        return fecha_nacimiento;
    }

    /**
     * @param fecha_nacimiento the fecha_nacimiento to set
     */
    public void setFecha_nacimiento(String fecha_nacimiento) {
        this.fecha_nacimiento = fecha_nacimiento;
    }

 
    /**
     * @return the doctor_id
     */
    public Doctor getDoctor_id() {
        return doctor_id;
    }

    /**
     * @param doctor_id the doctor_id to set
     */
    public void setDoctor_id(Doctor doctor_id) {
        this.doctor_id = doctor_id;
    }

    /**
     * @return the peso
     */
    public int getPeso() {
        return peso;
    }

    /**
     * @param peso the peso to set
     */
    public void setPeso(int peso) {
        this.peso = peso;
    }

 
 
}
