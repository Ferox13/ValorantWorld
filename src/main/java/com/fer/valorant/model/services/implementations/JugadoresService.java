package com.fer.valorant.model.services.implementations;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fer.valorant.model.entities.Jugador;
import com.fer.valorant.model.repositories.IJugadoresRepository;

@Service
public class JugadoresService {
    @Autowired
    IJugadoresRepository jugadoresRepository;

     public List<Jugador> findAll(){
        return jugadoresRepository.findAll();
        
    }
    public long countJugadors() {
        return jugadoresRepository.count();
    }

    public Optional<Jugador> findById(Long id){
        return jugadoresRepository.findById(id);
    }

    public Jugador insertJugador(Jugador Jugador){
        return jugadoresRepository.save(Jugador);
    }

    public Jugador updateJugador(Jugador Jugador){
        return jugadoresRepository.save(Jugador);
    }
   
}
