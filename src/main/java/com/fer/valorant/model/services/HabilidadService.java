package com.fer.valorant.model.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fer.valorant.model.entities.Habilidad;
import com.fer.valorant.model.repositories.IHabilidadRepository;

@Service
public class HabilidadService {
    @Autowired
    IHabilidadRepository habilidadRepository;

    public List<Habilidad> findAll(){
        return habilidadRepository.findAll();
    }

}
