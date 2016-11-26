package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entities.Entidad.estadoData;
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
        perActual = null;
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
		try{
			
			if(request.getParameter("buscar") != null){
				
				this.mapearAformulario(request, buscar(request));
	
			}else if (request.getParameter("guardar") != null){
				
				this.guardar(request);
				
			}else if (request.getParameter("borrar") != null){
				
				this.borrar(request);
				
			}else if (request.getParameter("resetear") != null){
				
				this.limpiar(request, response);
			
			}else if (request.getParameter("cancelar") != null){
				
				this.cancelar(request, response);
				return;
				
			} else {
				//request.getRequestDispatcher("agregar.jsp").forward(request, response);
				response.sendRedirect("agregar.jsp");
				return;
				
			}
			
		} catch(Exception ex){
			error = ex.getMessage();
			perActual = null;
			request.getSession().setAttribute("personaje", null);
			
		}
		
		request.getSession().setAttribute("error", error);
		request.getRequestDispatcher("agregar.jsp").forward(request, response);
	
	}
	
	private Personaje buscar(HttpServletRequest request) throws Exception{
		String nomPer = request.getParameter("nombrePer").toString();
		if(nomPer.equals("")) throw new Exception("Ingrese un nombre");
		perActual= ctrl.getByNombre(nomPer);
		if(perActual.getId() < 1) throw new Exception("Personaje invalido!");
		
		return perActual;
	}
	
	private void guardar(HttpServletRequest request) throws Exception{
		
		ctrl.guardar(mapearAdatos(request));
		perActual = null;
		request.getSession().setAttribute("personaje", null);
	}
	
	private void borrar(HttpServletRequest request) throws Exception {
		if (perActual != null){
			perActual.setEstData(estadoData.Deleted);
			ctrl.guardar(perActual);
			request.getSession().setAttribute("personaje", null);
			perActual = null;
		} else{
			throw new Exception("Elija personaje a borrar");
		}
	}
	
	private void cancelar(HttpServletRequest request, HttpServletResponse response) throws Exception{
		request.getSession().setAttribute("personaje", null);
		request.getSession().setAttribute("error", "");
		perActual = null;
		response.sendRedirect("index.jsp");
	}
	
	private void mapearAformulario(HttpServletRequest request,Personaje p){
		request.getSession().setAttribute("personaje", p);
		
	}
	
	private Personaje mapearAdatos(HttpServletRequest request) throws Exception{
						
		if (perActual != null ){
			perActual.setNombre(request.getParameter("nombre"));
			perActual.setDefensa(Integer.parseInt(request.getParameter("defensa")));
			perActual.setEnergia(Integer.parseInt(request.getParameter("energia")));
			perActual.setEvasion(Integer.parseInt(request.getParameter("evasion")));
			perActual.setVida(Integer.parseInt(request.getParameter("vida")));
			perActual.setEstData(estadoData.Modified);
			return perActual;
			
		} else{
			Personaje perNuevo = new Personaje();
			perNuevo.setNombre(request.getParameter("nombre"));
			perNuevo.setDefensa(Integer.parseInt(request.getParameter("defensa")));
			perNuevo.setEnergia(Integer.parseInt(request.getParameter("energia")));
			perNuevo.setEvasion(Integer.parseInt(request.getParameter("evasion")));
			perNuevo.setVida(Integer.parseInt(request.getParameter("vida")));
			perNuevo.setEstData(estadoData.New);
			return perNuevo;
		}
		
	
	}
	
	private void limpiar(HttpServletRequest request, HttpServletResponse response) throws Exception{
		request.getSession().setAttribute("personaje", null);
		request.getSession().setAttribute("error", "");
		perActual = null;
	}
	

}
