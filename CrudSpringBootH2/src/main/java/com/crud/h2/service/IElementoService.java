package com.crud.h2.service;

import java.util.List;

import com.crud.h2.modelo.Elemento;

public interface IElementoService {
	public List<Elemento> listar();
	
	public List<Elemento> listarPorTipo(String tipo);
	
	public Elemento listElementoId(int id);

	public int agregar(Elemento p);

	public int editar(Elemento p);

	public void delete(int id);
}
