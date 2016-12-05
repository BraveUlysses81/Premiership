package premier;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class DBUtil {
	
	private static final EntityManagerFactory emf = 
			Persistence.createEntityManagerFactory("prem");
	
	public static EntityManagerFactory getEMF(){
		return emf;
	}	
	
}
