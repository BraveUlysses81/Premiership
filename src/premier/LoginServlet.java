package premier;

import java.io.IOException;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LoginServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		ServletContext sc = getServletContext();
		HttpSession session = request.getSession();
		
		String tName = request.getParameter("username");
		String tPass = request.getParameter("password");
		
		String url = "/index.jsp";
		
		/*Person person = PersonDB.checkLogin(username);
		session.setAttribute("person", person);
		
		if(person == null){
			request.setAttribute("message", "The username \"" + username + "\" does not belong to a registered participant!!");
			sc.getRequestDispatcher(url).forward(request, response);
		}
		
		else if(username.equals("Willie W") && password.equals("youngjah")){
			url = "/runWeek.jsp";
			sc.getRequestDispatcher(url).forward(request, response);
		}
		
		else if(username.equals(person.getUsername()) && password.equals(person.getPassword())){
			url = "/rules.jsp";
			sc.getRequestDispatcher(url).forward(request, response);
		}
		
		else if(password != person.getPassword()){
			request.setAttribute("message", "The password is not correct! Please re-enter your username and the correct password.");
			sc.getRequestDispatcher(url).forward(request, response);
		}*/
		
		EntityManager em = DBUtil.getEMF().createEntityManager();
		String qString = "select p from Person p " +
						"where p.username = :username " +
						"and p.password = :password";
		TypedQuery<Person> tq = em.createQuery(qString, Person.class);
		tq.setParameter("username", tName);
		tq.setParameter("password", tPass);
		
		Person person = null;
		try{
			person = tq.getSingleResult();
			session.setAttribute("person", person);
		}
		catch (NoResultException e){
			
		}
		finally{
			em.close();
		}
		
		if(person == null){
			request.setAttribute("message", "The login information is incorrect. Please try again or text willie at 5126901665");
			sc.getRequestDispatcher(url).forward(request, response);
		}
		
		else if(person.getUsername().equals("Willie W") && person.getPassword().equals("youngjah")){
			url = "/runWeek.jsp";
			sc.getRequestDispatcher(url).forward(request, response);
		}
		
		else{
			url = "/rules.jsp";
			sc.getRequestDispatcher(url).forward(request, response);
		}
			
	}
	
}
