package premier;

import java.io.IOException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class PicksServlet
 */
@WebServlet("/PicksServlet")
public class PicksServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PicksServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//doGet(request, response);
		response.setContentType("text/plain");
		
		HttpSession session = request.getSession();
		Person person = (Person) session.getAttribute("person");
		System.out.println(person);
		
		//String wk = request.getParameter("wk1");
		String wk = "wk14";
		
		String[] winners = {"pic1", "pic2", "pic3", "pic4", "pic5", "pic6", "pic7", "pic8", "pic9", "pic10"};
		Map <String, String> winMap = new HashMap<>();
		for(int i = 1; i <= 10; i++){
			 winMap.put(winners[i - 1], request.getParameter("g"+ i));
		}
		
		String pic1 = request.getParameter("g1");
		String pic2 = request.getParameter("g2");
		String pic3 = request.getParameter("g3");
		String pic4 = request.getParameter("g4");
		String pic5 = request.getParameter("g5");
		String pic6 = request.getParameter("g6");
		String pic7 = request.getParameter("g7");
		String pic8 = request.getParameter("g8");
		String pic9 = request.getParameter("g9");
		String pic10 = request.getParameter("g10");
		
		
		String[] cons = {"con1", "con2", "con3", "con4", "con5", "con6", "con7", "con8", "con9", "con10"};
		Map <String, Integer> conMap = new HashMap<>();
		for(int i = 1; i <= 10; i++){
			 conMap.put(cons[i - 1], Integer.parseInt(request.getParameter("c"+ i)));
		}
		
		int con1 = Integer.parseInt(request.getParameter("c1"));
		int con2 = Integer.parseInt(request.getParameter("c2"));
		int con3 = Integer.parseInt(request.getParameter("c3"));
		int con4 = Integer.parseInt(request.getParameter("c4"));
		int con5 = Integer.parseInt(request.getParameter("c5"));
		int con6 = Integer.parseInt(request.getParameter("c6"));
		int con7 = Integer.parseInt(request.getParameter("c7"));
		int con8 = Integer.parseInt(request.getParameter("c8"));
		int con9 = Integer.parseInt(request.getParameter("c9"));
		int con10 = Integer.parseInt(request.getParameter("c10"));
		
		Game one = new Game(person, wk, "g1", pic1, con1);
		Game two = new Game(person, wk, "g2", pic2, con2);
		Game three = new Game(person, wk, "g3", pic3, con3);
		Game four = new Game(person, wk, "g4", pic4, con4);
		Game five = new Game(person, wk, "g5", pic5, con5);
		Game six = new Game(person, wk, "g6", pic6, con6);
		Game seven = new Game(person, wk, "g7", pic7, con7);
		Game eight = new Game(person, wk, "g8", pic8, con8);
		Game nine = new Game(person, wk, "g9", pic9, con9);
		Game ten = new Game(person, wk, "g10", pic10, con10);
		
		/*
		GameDB.insertGame(one);
		GameDB.insertGame(two);
		GameDB.insertGame(three);
		GameDB.insertGame(four);
		GameDB.insertGame(five);
		GameDB.insertGame(six);
		GameDB.insertGame(seven);
		GameDB.insertGame(eight);
		GameDB.insertGame(nine);
		GameDB.insertGame(ten);
		*/
		
		Set<Game> newGames = new HashSet<>();
		newGames.add(one);
		newGames.add(two);
		newGames.add(three);
		newGames.add(four);
		newGames.add(five);
		newGames.add(six);
		newGames.add(seven);
		newGames.add(eight);
		newGames.add(nine);
		newGames.add(ten);
		
		request.setAttribute("p1", pic1);
		request.setAttribute("p2", pic2);
		request.setAttribute("p3", pic3);
		request.setAttribute("p4", pic4);
		request.setAttribute("p5", pic5);
		request.setAttribute("p6", pic6);
		request.setAttribute("p7", pic7);
		request.setAttribute("p8", pic8);
		request.setAttribute("p9", pic9);
		request.setAttribute("p10", pic10);
		
		request.setAttribute("c1", con1);
		request.setAttribute("c2", con2);
		request.setAttribute("c3", con3);
		request.setAttribute("c4", con4);
		request.setAttribute("c5", con5);
		request.setAttribute("c6", con6);
		request.setAttribute("c7", con7);
		request.setAttribute("c8", con8);
		request.setAttribute("c9", con9);
		request.setAttribute("c10", con10);
		
		/*System.out.println(PersonDB.addGames(newGames, person));*/
		
		String url = "/picksMade.jsp";
		
		EntityManager em = DBUtil.getEMF().createEntityManager();
		EntityTransaction trans = em.getTransaction();
		
		String check = "The insertion of " + newGames.size() + " " + wk + " games for was a SUCCESS";
		try{
			trans.begin();
			person.getGames().addAll(newGames);
			em.merge(person);
			trans.commit();
			
			//System.out.println(check);
			this.getServletContext()
			.getRequestDispatcher(url)
			.forward(request, response);
		}
		catch(Exception ex){
			System.out.println(ex);
			trans.rollback();
		}
		finally{
			em.close();
		}	
		
	}

}