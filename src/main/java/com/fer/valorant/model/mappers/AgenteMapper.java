package com.fer.valorant.model.mappers;

import org.mapstruct.Mapper;

import com.fer.valorant.model.dto.AgenteDTO;
import com.fer.valorant.model.entities.Agente;
import com.fer.valorant.model.services.implementations.AgentesService;

@Mapper(componentModel = "spring", uses = AgentesService.class)
public interface AgenteMapper {

    // De entidad a DTO
    public static AgenteDTO toDTO(Agente agente) {
        AgenteDTO dto = new AgenteDTO();
        dto.setIdAgente(agente.getIdAgente());
        dto.setNombre(agente.getNombre());
        dto.setPais(agente.getPais());
        return dto;
    }

    // De DTO a entidad
    public static Agente toEntity(AgenteDTO agenteDTO) {
        Agente agente = new Agente();
        agente.setIdAgente(agenteDTO.getIdAgente());
        agente.setNombre(agenteDTO.getNombre());
        agente.setPais(agenteDTO.getPais());
        return agente;
    }
}