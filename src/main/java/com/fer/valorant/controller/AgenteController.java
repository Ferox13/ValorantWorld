package com.fer.valorant.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.server.ResponseStatusException;
import com.fer.valorant.converters.StringToRolConverter;
import com.fer.valorant.model.entities.Agente;
import com.fer.valorant.model.services.implementations.AgentesService;

@RestController
@RequestMapping("/agentess")
public class AgenteController {
@Autowired
AgentesService service;

  @GetMapping("/all")
  List<Agente> all() {
    try {
      return service.findAll();
    } catch (Exception e) {
      throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Agentes no encontrados", e);
    }
  }

  @GetMapping("/{id}")
  Agente one(@PathVariable("id") Long id) {
    try {
      return service.getAgenteById2((Long) id);
    } catch (Exception e) {
      throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Agente no encontrado", e);
    }

  }

  @GetMapping("/{nombre}/{pais}/{rol}")
  Agente one(@PathVariable String nombre, @PathVariable String pais, @PathVariable String rol) {
    try {
      return service.findByNombreAndPaisAndRol(nombre, pais, new StringToRolConverter().convert(rol));
    } catch (Exception e) {
      throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Agente no encontrado", e);
    }
  }

  @PostMapping("/agente")
  public ResponseEntity<Agente> insertarAgente(@RequestBody Agente agente) {
    try {
      Agente nuevoAgente = service.insertAgente(agente);
      return new ResponseEntity<>(nuevoAgente, HttpStatus.CREATED);

    } catch (Exception e) {
      throw new ResponseStatusException(HttpStatus.NOT_IMPLEMENTED, "Agente insertado", e);
    }

  }

  @PostMapping("/agente/skill")
  public ResponseEntity<Agente> insertarAgenteWithSKill(@RequestBody Agente agente) {
    try {
      Agente nuevoAgente = service.insertAgenteWithSKill(agente);
      return new ResponseEntity<>(nuevoAgente, HttpStatus.CREATED);

    } catch (Exception e) {
      throw new ResponseStatusException(HttpStatus.NOT_IMPLEMENTED, "Agente insertado", e);
    }

  }

  @DeleteMapping("/delete/{id}")
  public ResponseEntity<Agente> deleteUser(@PathVariable Long id) {
    try {
      Optional<Agente> agenteOptional = service.findById(id);
      if (agenteOptional.isPresent()) {
        service.deleteAgente(agenteOptional.get());
      } else {
        throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Agente no encontrado");

      }
      return new ResponseEntity<>(agenteOptional.get(), HttpStatus.OK);

    } catch (Exception e) {
      throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Agente no encontrado", e);
    }

  }

}
