package com.fer.valorant.controller;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.server.ResponseStatusException;

import com.fer.valorant.converters.StringToRolConverter;
import com.fer.valorant.model.entities.Agente;
import com.fer.valorant.model.enumerated.Rol;
import com.fer.valorant.model.services.AgentesService;
import org.springframework.web.bind.annotation.RequestParam;

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
    return service.findById((Long) id).get();

  }

  @GetMapping("/agentes/{nombre}/{pais}/{rol}")
  Agente one(@PathVariable String nombre, @PathVariable String pais, @PathVariable String rol) {
    try {
      return service.findByNombreAndPaisAndRol(nombre, pais, new StringToRolConverter().convert(rol));
    } catch (Exception e) {
      throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Agente no encontrado", e);
    }
  }

}
