package logic;

import java.util.ArrayList;

//import util.*;
import entities.*;
import entities.Entidad.estadoData;
import data.*;

public class PersonajeLogic {
	int puntosGanados = 10;
	
	private PersonajeAdapter PersonajeData;
	
	public PersonajeLogic() {
		PersonajeData = new PersonajeAdapter();
	}
	
	public void guardar(Personaje per) throws Exception {
	
		if (per.getEstData() != Entidad.estadoData.Deleted){
			String error = "";
			
			int def = per.getDefensa();
			int ene = per.getEnergia();
			int vid = per.getVida();
			int eva = per.getEvasion();
			
			int ptosDisp = per.getPtsTotales();
			
			if (def + ene + vid + eva > ptosDisp) {
				error += "Los atributos elegidos superan a los disponible \n";
			}
			if (eva > 80) {
				error += "La evasi�n no puede superar los 80 puntos \n";
			}
			if (def > 20) {
				error += "La defensa no puede superar los 20 puntos \n";
			}
			
			
			if(per.getNombre().equals(this.getByNombre(per).getNombre()) && per.getId() != this.getByNombre(per).getId()){
				error += "Nombre de personaje ya existente \n";
			}
			
			if (error.length() != 0) {
				throw new Exception(error);
			}
		
		}
		
		try
		{
			PersonajeData.Guardar(per);
		}
		
		catch (Exception ex)
		{
			throw ex;
		}
	
		
	}

	
	
	public ArrayList<Personaje> GetAll() throws Exception {
		try
		{
			return PersonajeData.GetAll();
		}
		catch (Exception ex)
		{
			throw ex;
		}
	}
	
	public Personaje getById(int id) throws Exception{
		Personaje p;
		p = PersonajeData.getById(id);
		/*
		if(p.getId() < 1)
			throw new Exception("Personaje invalido");
		*/
			
		return p;
	}
	
	public Personaje getByNombre(Personaje per) throws Exception {
		Personaje p;
		p = PersonajeData.getByNombre(per, "");
		/*
		if(p.getId() < 1)
			throw new Exception("Personaje invalido");
		*/
			
		return p;
	}
	
	public Personaje getByNombre(String nombre) throws Exception {
		Personaje p;
		p = PersonajeData.getByNombre(null, nombre);
		/*
		if(p.getId() < 1)
			throw new Exception("Personaje invalido");
		*/
					
		return p;
	}
	
	public void asignarPuntos(Personaje ganador) throws Exception{
		ganador.setPtsTotales( ganador.getPtsTotales() + this.puntosGanados );
		ganador.setEstData(estadoData.Modified); 
		guardar(ganador);
	}
	
}
