package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entities.Personaje;
import logic.PartidaLogic;

/**
 * Servlet implementation class Pelea
 */
@WebServlet("/Pelea")
public class Pelea extends HttpServlet {
	private static final long serialVersionUID = 1L;
	PartidaLogic ctrl;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Pelea() {
        super();
        // TODO Auto-generated constructor stub
        ctrl = new PartidaLogic();
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
		//doGet(request, response);
		String error = "";
		try{

			// Si clickeo en "Cancelar"
			if(request.getParameter("cancelar") != null){
				request.getSession().setAttribute("p1", null);
				request.getSession().removeAttribute("p1");
				request.getSession().setAttribute("p2", null);
				request.getSession().removeAttribute("p2");
				request.getSession().setAttribute("error", "");
				request.getSession().removeAttribute("error");
				request.getRequestDispatcher("index.jsp").forward(request, response);		
				return;
			}
			
			//Si se clickeo en "Comenzar" o la partida no esta empezada
			if(request.getParameter("comenzar") != null || request.getSession().getAttribute("partida") == null){
				if(request.getSession().getAttribute("p1") == null || request.getSession().getAttribute("p2") == null)
					throw new Exception("Elija personajes!");
				Personaje pj1 = (Personaje)request.getSession().getAttribute("p1");
				Personaje pj2 = (Personaje)request.getSession().getAttribute("p2");
					
				ctrl.comenzarPartida(pj1, pj2);
				request.getSession().setAttribute("partida", ctrl);
				
			}
			
			// Si clickeo en "Atacar"
			if(request.getParameter("atacar") != null){
				if(request.getSession().getAttribute("partida") == null)
					throw new Exception ("Comienze partida primero!");
				ctrl = (PartidaLogic)request.getSession().getAttribute("partida");
				int energiaAtaque = Integer.parseInt(request.getParameter("energiaAtaque"));
				if(energiaAtaque <= 0){
					ctrl.defender();
					throw new Exception("No Ingreso energia valida, defendio!");				
				}
				ctrl.atacar(energiaAtaque);
			}
			
			//si clickeo en "Defender"
			if (request.getParameter("defender") != null){
				if(request.getSession().getAttribute("partida") == null)
					throw new Exception ("Comienze partida primero!");
				ctrl = (PartidaLogic)request.getSession().getAttribute("partida");
				ctrl.defender();
			}
				
		
		
		
		} catch (Exception ex){
			error = ex.getMessage();
		}
		
		request.getSession().setAttribute("error", error);
		request.getRequestDispatcher("pelea.jsp").forward(request, response);	
	}	
			
				
					
	

}
