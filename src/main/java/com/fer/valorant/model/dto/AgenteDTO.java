package com.fer.valorant.model.dto;

import java.util.List;
import com.fer.valorant.model.entities.Habilidad;
import com.fer.valorant.model.entities.Partida;
import com.fer.valorant.model.enumerated.Rol;

public class AgenteDTO {

    private Long idAgente;
    private String nombre;
    private Rol rol;
    private String ultimate;
    private String pais;
    private List<Habilidad> habilidades;
    private List<Partida> partidas;

    public AgenteDTO() {
    }

    public AgenteDTO(Long idAgente, String nombre, Rol rol, String ultimate, String pais, List<Habilidad> habilidades,
            List<Partida> partidas) {
        this.idAgente = idAgente;
        this.nombre = nombre;
        this.rol = rol;
        this.ultimate = ultimate;
        this.pais = pais;
        this.habilidades = habilidades;
        this.partidas = partidas;
    }

    public Long getIdAgente() {
        return idAgente;
    }

    public void setIdAgente(Long idAgente) {
        this.idAgente = idAgente;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public Rol getRol() {
        return rol;
    }

    public void setRol(Rol rol) {
        this.rol = rol;
    }

    public String getUltimate() {
        return ultimate;
    }

    public void setUltimate(String ultimate) {
        this.ultimate = ultimate;
    }

    public String getPais() {
        return pais;
    }

    public void setPais(String pais) {
        this.pais = pais;
    }

    public List<Habilidad> getHabilidades() {
        return habilidades;
    }

    public void setHabilidades(List<Habilidad> habilidades) {
        this.habilidades = habilidades;
    }

    public List<Partida> getPartidas() {
        return partidas;
    }

    public void setPartidas(List<Partida> partidas) {
        this.partidas = partidas;
    }

}
