package premier;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ServletPremier")
public class DataSetServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public DataSetServlet() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/plain");
		
		Person AshleyW = new Person("ashleyw", "hphs");
		Person BederT = new Person("bedert", "mexico");
		Person EmirG = new Person("emirg", "recife");
		Person FernandoDR = new Person("fernandodr", "tworivers");
		Person JuanPabloG = new Person("juanpablog", "cruzazul");
		Person MarcH = new Person("march", "unh");
		Person MattD = new Person("mattd", "hamster");
		Person MauricioM = new Person("mauriciom", "futbol");
		Person MaxG = new Person("maxg", "soccer");
		Person MikeN = new Person("miken", "dodgers");
		Person MikeP = new Person("mikep", "chase");
		Person NeilW = new Person("neilw", "melody");
		Person RyanW = new Person("ryanw", "valpo");
		Person SamG = new Person("samg", "arrachera");
		Person TeamS = new Person("teams", "houston");
		Person TylerW = new Person("tylerw", "mayor");
		Person WesS = new Person("wess", "ncstate");		
		Person WillieW = new Person("williew", "youngjah");				
		
		
		PersonDB.insertPerson(AshleyW);
		PersonDB.insertPerson(BederT);
		PersonDB.insertPerson(EmirG);
		PersonDB.insertPerson(FernandoDR);
		PersonDB.insertPerson(JuanPabloG);
		PersonDB.insertPerson(MarcH);
		PersonDB.insertPerson(MattD);
		PersonDB.insertPerson(MauricioM);
		PersonDB.insertPerson(MaxG);
		PersonDB.insertPerson(MikeN);
		PersonDB.insertPerson(MikeP);
		PersonDB.insertPerson(NeilW);
		PersonDB.insertPerson(RyanW);
		PersonDB.insertPerson(SamG);
		PersonDB.insertPerson(TeamS);
		PersonDB.insertPerson(TylerW);
		PersonDB.insertPerson(WesS);
		PersonDB.insertPerson(WillieW);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
