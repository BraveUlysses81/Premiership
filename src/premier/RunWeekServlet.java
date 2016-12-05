package premier;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class RunWeekServlet
 */
@WebServlet("/RunWeekServlet")
public class RunWeekServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RunWeekServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//doGet(request, response);
				
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		response.setContentType("text/plain");
		
		HttpSession session = request.getSession();
		Person person = (Person) session.getAttribute("person");
		System.out.println(person);
		
		//String wk = request.getParameter("wk1");
		
		String wk = "wk" + request.getParameter("wkno");
		
		List<Game> games = GameDB.weekGames(wk);
		
		String win1 = request.getParameter("w1");
		String win2 = request.getParameter("w2");
		String win3 = request.getParameter("w3");
		String win4 = request.getParameter("w4");
		String win5 = request.getParameter("w5");
		String win6 = request.getParameter("w6");
		String win7 = request.getParameter("w7");
		String win8 = request.getParameter("w8");
		String win9 = request.getParameter("w9");
		String win10 = request.getParameter("w10");
		
		GameDB.setWinners(games, win1, win2, win3, win4, win5, win6, win7, win8, win9, win10);
		GameDB.checkGames(games);
		GameDB.updateGames(games);
		
		List<Person> persons = PersonDB.allPeople();
		for(Person p : persons){
		PersonDB.addWins(p, wk);
		PersonDB.addLosses(p, wk);
		PersonDB.addPoints(p, wk);
		PersonDB.updatePerson(p);
		}
		
	}

}
