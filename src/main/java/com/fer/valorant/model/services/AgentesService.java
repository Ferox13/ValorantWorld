package com.fer.valorant.model.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fer.valorant.model.dto.AgenteDTO;
import com.fer.valorant.model.entities.Agente;
import com.fer.valorant.model.enumerated.Rol;
import com.fer.valorant.model.mappers.AgenteMapper;
import com.fer.valorant.model.repositories.IAgentesRepository;

@Service
public class AgentesService {
    @Autowired
    private IAgentesRepository agentesRepository;
    

    public AgenteDTO getAgenteById(Long id) {
        Agente agente = agentesRepository.findById(id).get();
        return AgenteMapper.toDTO(agente); 
    }

    public List<Agente> findAll() {
        return agentesRepository.findAll();

    }

    public long countAgentes() {
        return agentesRepository.count();
    }

    public Optional<Agente> findById(Long id) {
        return agentesRepository.findById(id);
    }

    public Agente insertAgente(Agente agente) {
        return agentesRepository.save(agente);
    }

    public Agente insertAgenteWithSKill(Agente agente) {
        if (agente.gethabilidades().get(0).getPoseedor() == null) {
            agente.gethabilidades().get(0).setPoseedor(agente);
        }
        return agentesRepository.save(agente);
    }

    public Agente updateAgente(Agente agente) {
        return agentesRepository.save(agente);
    }

    public List<Agente> findByRol(Rol rol) {
        return agentesRepository.findByRol(rol);
    }

    public Agente findByNombreAndPaisAndRol(String nombre, String pais, Rol rol) {
        return agentesRepository.findByNombreAndPaisAndRol(nombre, pais, rol);
    }

    public void deleteAgente(Agente agente) {
        agentesRepository.delete(agente);
        ;
    }

}