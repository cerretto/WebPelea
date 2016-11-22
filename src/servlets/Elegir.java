package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entities.Personaje;
import logic.PersonajeLogic;

import java.util.ArrayList;

/**
 * Servlet implementation class elegir
 */
@WebServlet("/elegir")
public class Elegir extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private PersonajeLogic ctrl;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Elegir() {
        super();
        // TODO Auto-generated constructor stub
        ctrl = new PersonajeLogic();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String txtId1 = request.getParameter("personaje1");
		String txtId2 = request.getParameter("personaje2");
		String error = "";
		
		try{
			int id1 = Integer.parseInt(txtId1);
			int id2 = Integer.parseInt(txtId2);
			Personaje per1 = ctrl.getById(id1);
			Personaje per2 = ctrl.getById(id2);
			
			if(per1.getNombre().equals(per2.getNombre()))
				throw new Exception ("Elija personajes distintos");
			
			request.getSession().setAttribute("personaje1", per1);
			request.getSession().setAttribute("personaje2", per2);
		
			response.sendRedirect("Pelea");
			return;
		} catch(Exception ex){
			error = ex.getMessage();
			if(error.equals("null")) error = "";
		}
		request.getSession().setAttribute("error", error);
		doPost(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		ArrayList<Personaje> personajes;
		
		try{
			personajes = ctrl.GetAll();
			
		}catch(Exception ex){
			personajes = new ArrayList<Personaje>();
		}
		
		request.getSession().setAttribute("personajes", personajes);
		request.getRequestDispatcher("elegir.jsp").forward(request, response);
	}

}
