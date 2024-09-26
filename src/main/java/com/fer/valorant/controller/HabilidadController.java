package com.fer.valorant.controller;
import java.util.List;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.server.ResponseStatusException;

import com.fer.valorant.model.entities.Habilidad;
import com.fer.valorant.model.services.HabilidadService;

@RestController
public class HabilidadController {
    public HabilidadService service;
    
  HabilidadController(HabilidadService service) {
    this.service = service;
  }
  
  @GetMapping("/habilidades")
  List<Habilidad> all() {
    try {
      return service.findAll();
    } catch (Exception e) {
      throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Habilidades no encontradas", e);
    }
  }

}
