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
 * Servlet implementation class Elegir
 */
@WebServlet("/Elegir")
public class Elegir extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 PersonajeLogic ctrlPer;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Elegir() {
        super();
        ctrlPer = new PersonajeLogic();
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
		if(request.getParameter("volver") != null){
			
			if((request.getSession().getAttribute("p1") != null)  || (request.getSession().getAttribute("p2")!=null)){
				request.getSession().removeAttribute("p1");
				request.getSession().removeAttribute("p2");
				request.getSession().setAttribute("error", "");
				request.getSession().removeAttribute("error");
			}
			request.getSession().setAttribute("error", "");
			request.getSession().removeAttribute("error");
			request.getRequestDispatcher("index.jsp").forward(request, response);

					
			return;
		}
		
		String error = "";
		try {
			
			
			String nomPer1 = request.getParameter("Personaje1").toString();
			if(nomPer1.equals("")) throw new Exception("Ingrese un nombre de Personaje 1");
			Personaje p1= ctrlPer.getByNombre(nomPer1);
			if(p1.getId() < 1){
				throw new Exception("Personaje1 invalido!");
			}
						
			String nomPer2 = request.getParameter("Personaje2").toString();
			if(nomPer2.equals("")) throw new Exception("Ingrese un nombre de Personaje 2");
			Personaje p2= ctrlPer.getByNombre(nomPer2);
			if(p2.getId() < 1){
				throw new Exception("Personaje2 invalido!");
			}
			
			if(p1.getNombre().equals(p2.getNombre())){
				throw new Exception("Elija personajes distintos!");
			}
			
			request.getSession().setAttribute("p1", p1);
			request.getSession().setAttribute("p2", p2);
			
			//response.sendRedirect("pelea.jsp");
			request.getRequestDispatcher("pelea.jsp").forward(request, response);
			return;
			
		} catch (Exception ex) {
			// TODO Auto-generated catch block
			error = ex.getMessage();
			
		}
		
		request.getSession().setAttribute("error", error);
		request.getRequestDispatcher("elegir.jsp").forward(request, response);
	}

}
