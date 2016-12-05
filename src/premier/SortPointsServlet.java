package premier;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SortPointsServlet
 */
@WebServlet("/SortPointsServlet")
public class SortPointsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SortPointsServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ArrayList <Person> persons = PersonDB.pointsPeople();
		for(int i = 1 ; i <= persons.size() ; i++){
				Person p = persons.get(i - 1);
				request.setAttribute("tm" + String.valueOf(i), p.getUsername());
				request.setAttribute("win" + String.valueOf(i), p.getWinNum());
				request.setAttribute("loss" + String.valueOf(i), p.getLossNum());
				request.setAttribute("pts" + String.valueOf(i), p.getTotPoint());
			}
		
		String url = "/standings.jsp";
		getServletContext()
		.getRequestDispatcher(url)
		.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
