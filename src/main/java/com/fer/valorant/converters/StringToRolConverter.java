package com.fer.valorant.converters;

import org.springframework.stereotype.Component;

import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.Converter;
import com.fer.valorant.model.enumerated.Rol;

@Component
public class StringToRolConverter implements Converter<String, Rol> {

    @Override
    public Rol convert(String source) {
        try {
            return Rol.valueOf(source.toUpperCase()); // Convierte el valor a mayúsculas
        } catch (IllegalArgumentException e) {
            throw new IllegalArgumentException("Rol inválido: " + source);
        }
    }

    @Override
    public JavaType getInputType(TypeFactory typeFactory) {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'getInputType'");
    }

    @Override
    public JavaType getOutputType(TypeFactory typeFactory) {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'getOutputType'");
    }

    
}