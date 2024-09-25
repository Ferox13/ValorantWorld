package com.fer.valorant.controller;

import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.fer.valorant.model.entities.Agente;
import com.fer.valorant.model.services.AgentesService;
@RestController
public class AgenteController {
    public AgentesService service;

    AgenteController(AgentesService service) {
        this.service = service;
    }

  @GetMapping("/agentes")
  List<Agente> all() {
    return service.findAll();
}

@GetMapping("/agentes/{id}")
  Agente one(@PathVariable("id") Long id) {
    return service.findById((Long)id).get();
    
  }
}
