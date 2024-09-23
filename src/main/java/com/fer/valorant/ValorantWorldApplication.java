package com.fer.valorant;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import com.fer.valorant.model.entities.Agente;
import com.fer.valorant.model.enumerated.Rol;
import com.fer.valorant.model.services.AgentesService;

@SpringBootApplication
public class ValorantWorldApplication implements CommandLineRunner {
	@Autowired
	AgentesService agentesService;

	public static void main(String[] args) {
		SpringApplication.run(ValorantWorldApplication.class, args);
	}

	@Override
	public void run(String... args) throws Exception {
		System.out.println(agentesService.findAll());
		System.out.println(agentesService.countAgentes());

		Optional<Agente> agenteOptional = agentesService.findById((long) 2);
		if (agenteOptional.isPresent()) {
			System.out.println("Se ha encontrado un agente");
			System.out.println(agenteOptional);
		} else {
			System.out.println("No se ha encontrado ningún agente");
		}

		System.out.println(
				agentesService.insertAgente(new Agente((long) 26, "prueba", Rol.DUELISTA, "Ulti cambiada", "España")));

		agenteOptional = agentesService.findById((long) 29);
		if (agenteOptional.isPresent()) {
			System.out.println("Se ha encontrado un agente para actualizar");
			System.out.println(agentesService.updateAgente(agenteOptional.get()));
		} else {
			System.out.println("No se ha podido actualizar");
		}

		System.out.println("Agentes con rol CENTINELA: " + agentesService.findByRol(Rol.CENTINELA));
	}

}
