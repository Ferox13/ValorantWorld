package com.fer.valorant.model.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fer.valorant.model.entities.Partida;
import com.fer.valorant.model.repositories.IPartidasRepository;

@Service
public class PartidaService {
    @Autowired
    IPartidasRepository partidasRepository;

    public List<Partida> findAll(){
        return partidasRepository.findAll();
        
    }
    public long countPartidas() {
        return partidasRepository.count();
    }

    public Optional<Partida> findById(Long id){
        return partidasRepository.findById(id);
    }

    public Partida insertPartida(Partida Partida){
        return partidasRepository.save(Partida);
    }

    public Partida updatePartida(Partida Partida){
        return partidasRepository.save(Partida);
    }

    

}
