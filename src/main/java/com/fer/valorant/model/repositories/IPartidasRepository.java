package com.fer.valorant.model.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.fer.valorant.model.entities.Partida;

public interface IPartidasRepository extends JpaRepository<Partida, Long> {

}
