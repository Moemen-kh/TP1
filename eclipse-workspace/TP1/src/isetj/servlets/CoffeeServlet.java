package isetj.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CoffeeServlet
 */
@WebServlet("/CoffeeServlet")
public class CoffeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CoffeeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String typeremarque = request.getParameter("typeremarque");
		String texteremarque = request.getParameter("texteremarque");
		PrintWriter out = response.getWriter();
		out.println("<html><head>");
		out.println("<title>Bienvenue</title></head>");
		out.println("<center> <h1> Bienvenue au café </h1> </center>");
		out.println("<body> <img src='Image.jpg' width='50%' <br>");
		out.println("<p>Merci de nous avoir fait parvenir la remarque suivante concernant </p>");
		out.println("<b>"+typeremarque+"</b>");
		out.println("<p>"+texteremarque);
		out.println("</body></html>");
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
