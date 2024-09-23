package com.fer.valorant.model.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fer.valorant.model.entities.Agente;
import com.fer.valorant.model.enumerated.Rol;
import com.fer.valorant.model.repositories.IAgentesRepository;

@Service
public class AgentesService {
@Autowired
    private IAgentesRepository agentesRepository;

    public List<Agente> findAll(){
        return agentesRepository.findAll();
        
    }
    public long countAgentes() {
        return agentesRepository.count();
    }

    public Optional<Agente> findById(Long id){
        return agentesRepository.findById(id);
    }

    public Agente insertAgente(Agente agente){
        return agentesRepository.save(agente);
    }

    public Agente updateAgente(Agente agente){
        return agentesRepository.save(agente);
    }
    public List<Agente> findByRol(Rol rol){
        return agentesRepository.findByRol(rol);
    }
}