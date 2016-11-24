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
 * Servlet implementation class Elegir
 */
@WebServlet("/Elegir")
public class Elegir extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Elegir() {
        super();
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
		
		try {
			PersonajeLogic ctrlPer =new logic.PersonajeLogic();
			
			String nomPer1 = request.getParameter("Personaje1").toString();
			Personaje p1= ctrlPer.getByNombre(nomPer1);
			request.getSession().setAttribute("p1", p1);
			
			String nomPer2 = request.getParameter("Personaje2").toString();
			Personaje p2= ctrlPer.getByNombre(nomPer2);
			request.getSession().setAttribute("p2", p2);
			
			response.sendRedirect("jugar.jsp");
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}
