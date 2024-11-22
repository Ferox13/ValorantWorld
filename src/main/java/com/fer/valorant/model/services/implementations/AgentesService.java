package com.fer.valorant.model.services.implementations;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fer.valorant.model.dto.AgenteDTO;
import com.fer.valorant.model.entities.Agente;
import com.fer.valorant.model.enumerated.Rol;
import com.fer.valorant.model.mappers.AgenteMapper;
import com.fer.valorant.model.repositories.IAgentesRepository;
import com.fer.valorant.model.services.interfaces.IAgentesService;

@Service
public class AgentesService implements IAgentesService {
    @Autowired
    private IAgentesRepository agentesRepository;

    @Override
    public Agente getAgenteById2(Long id) {
        return agentesRepository.findById(id).orElseThrow(() -> new RuntimeException("Agente no encontrado"));
    }

    @Override
    public List<Agente> findAll() {
        return agentesRepository.findAll();

    }

    @Override
    public long countAgentes() {
        return agentesRepository.count();
    }

    @Override
    public Optional<Agente> findById(Long id) {
        return agentesRepository.findById(id);
    }

    @Override
    public Agente insertAgente(Agente agente) {
        return agentesRepository.save(agente);
    }

    @Override
    public Agente insertAgenteWithSKill(Agente agente) {
        if (agente.gethabilidades().get(0).getPoseedor() == null) {
            agente.gethabilidades().get(0).setPoseedor(agente);
        }
        return agentesRepository.save(agente);
    }

    @Override
    public Agente updateAgente(Agente agente) {
        return agentesRepository.save(agente);
    }

    @Override
    public List<Agente> findByRol(Rol rol) {
        return agentesRepository.findByRol(rol);
    }

    @Override
    public Agente findByNombreAndPaisAndRol(String nombre, String pais, Rol rol) {
        return agentesRepository.findByNombreAndPaisAndRol(nombre, pais, rol);
    }

    @Override
    public void deleteAgente(Agente agente) {
        agentesRepository.delete(agente);

    }
}