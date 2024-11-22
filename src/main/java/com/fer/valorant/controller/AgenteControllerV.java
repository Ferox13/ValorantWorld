package com.fer.valorant.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fer.valorant.model.services.interfaces.IAgentesService;

import org.springframework.ui.Model;

@Controller
@RequestMapping("/agentes")
public class AgenteControllerV {
@Autowired
    private IAgentesService service;

    @GetMapping("/list")
    public String listAgentes(Model model) {
        model.addAttribute("agentes", service.findAll());
        return "agente/agentelist";
    }
   @GetMapping("/detail/{id}")
    public String agenteDetail(@PathVariable("id") Long id, Model model) {
        model.addAttribute("agente", service.getAgenteById2(id));
        model.addAttribute("agentes", service.findAll());
        return "agente/agenteList";
    }


}
