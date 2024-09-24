package com.fer.valorant.model.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.fer.valorant.model.entities.Jugador;

public interface IJugadoresRepository extends JpaRepository<Jugador, Long> {

}
