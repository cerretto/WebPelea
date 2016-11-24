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
		if(request.getParameter("cancelar") != null){
			request.getRequestDispatcher("index.jsp").forward(request, response);		
			return;
		}
	
		String error = "";
		
		//Compruebo si la partida esta empezada
		
		ctrl = (PartidaLogic)request.getSession().getAttribute("partida");
				
		//Capturo los datos
		try{
			if(request.getParameter("atacar") != null){
				int energiaAtaque = Integer.parseInt(request.getParameter("energiaAtaque"));
					if(energiaAtaque == 0){
						throw new Exception("Ingrese energia");
					}
					ctrl.atacar(energiaAtaque);
				}
				else{
					ctrl.defender();
				}
			}	
			catch (Exception ex) {
				// TODO Auto-generated catch block
				error = ex.getMessage();
			}
				
			Personaje pj1 = (Personaje)request.getSession().getAttribute("p1");
			Personaje pj2 = (Personaje)request.getSession().getAttribute("p2");
				
			try {
				ctrl.comenzarPartida(pj1, pj2);
			} catch (Exception ex) {
				// TODO Auto-generated catch block
				error = ex.getMessage();				
			}	
			
			request.getSession().setAttribute("partida", ctrl);
		}
	}


