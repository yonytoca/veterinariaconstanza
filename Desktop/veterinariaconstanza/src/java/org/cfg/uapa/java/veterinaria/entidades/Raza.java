/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.cfg.uapa.java.veterinaria.entidades;

/**
 *
 * @author EDUARDO
 */
public class Raza {
    private int id;
    private String nombre;
    private Especie especie_id;

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
     * @return the especie_id
     */
    public Especie getEspecie_id() {
        return especie_id;
    }

    /**
     * @param especie_id the especie_id to set
     */
    public void setEspecie_id(Especie especie_id) {
        this.especie_id = especie_id;
    }
}
