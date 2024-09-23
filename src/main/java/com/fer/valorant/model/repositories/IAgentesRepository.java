package com.fer.valorant.model.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.fer.valorant.model.entities.Agente;
import com.fer.valorant.model.enumerated.Rol;

public interface IAgentesRepository extends JpaRepository<Agente,Long>{
 List<Agente> findByRol(Rol rol);
}
