package com.fer.valorant.model.services.interfaces;

import java.util.List;
import java.util.Optional;

import com.fer.valorant.model.entities.Agente;
import com.fer.valorant.model.enumerated.Rol;

public interface IAgentesService {
public Agente getAgenteById2(Long id);

    public List<Agente> findAll();

    public long countAgentes();

    public Optional<Agente> findById(Long id);

    public Agente insertAgente(Agente agente);

    public Agente insertAgenteWithSKill(Agente agente);

    public Agente updateAgente(Agente agente);

    public List<Agente> findByRol(Rol rol);

    public Agente findByNombreAndPaisAndRol(String nombre, String pais, Rol rol);

    public void deleteAgente(Agente agente);

}
