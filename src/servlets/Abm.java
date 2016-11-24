package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entities.Personaje;
import logic.PersonajeLogic;

/**
 * Servlet implementation class Abm
 */
@WebServlet("/Abm")
public class Abm extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private PersonajeLogic ctrl; 
    private Personaje perActual;
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Abm() {
        super();
        ctrl = new PersonajeLogic();
        perActual = new Personaje();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String error =  "";
		
		if(request.getParameter("buscar") != null){
			try{
					
				this.mapearAformulario(request, buscar(request));
				
			}catch(Exception ex){
				error = ex.getMessage();
			}
			
			return;
		}else if (request.getParameter("guardar") != null){
			return;
		}else if (request.getParameter("borrar") != null){
			return;
		}else if (request.getParameter("resetear") != null){
			return;
		}else if (request.getParameter("cancelar") != null){
			return;
		} else {
			//request.getRequestDispatcher("agregar.jsp").forward(request, response);
			return;
		}
		
		
	
		
	}
	
	private Personaje buscar(HttpServletRequest request) throws Exception{
		String nomPer = request.getParameter("Personaje1").toString();
		perActual= ctrl.getByNombre(nomPer);
		if(perActual.getId() < 1){
			throw new Exception("Personaje1 invalido!");
		}
		return perActual;
	}
	
	private void mapearAformulario(HttpServletRequest request,Personaje p){
		request.getSession().setAttribute("personaje", p);
		return;
	}
	
	private void mapearAdatos(HttpServletRequest request){
		if (perActual.getId() > 0){
			perActual.setNombre(request.getParameter("nombre"));
			perActual.setDefensa(Integer.parseInt(request.getParameter("defensa")));
			perActual.setEnergia(Integer.parseInt(request.getParameter("energia")));
			perActual.setEvasion(Integer.parseInt(request.getParameter("evasion")));
			perActual.setVida(Integer.parseInt(request.getParameter("vida")));
		} else{
			Personaje perNuevo = new Personaje();
			
		}
		
		return;
	}
	
	

}
