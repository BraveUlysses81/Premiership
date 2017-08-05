package premier;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;

import premier.DBUtil;
import premier.Person;

public class PersonDB {

	public static String insertPerson(Person person){
		
		EntityManager em = DBUtil.getEMF().createEntityManager();
		EntityTransaction trans = em.getTransaction();
		
		String check = "The insertion of a person was a SUCCESS";
		try{
			trans.begin();
			em.persist(person);
			trans.commit();
			return check;
		}
		catch(Exception ex){
			System.out.println(ex);
			trans.rollback();
			check = "The insertion of a person FAILED";
			return check;
		}
		finally{
			em.close();
		}
	}
	
	/*public static Person checkLogin(String username){
		
		EntityManager em = DBUtil.getEMF().createEntityManager();
		String qString = "select p from Person p " +
						"where p.username = :username";
		TypedQuery<Person> tq = em.createQuery(qString, Person.class);
		tq.setParameter("username", username);
		
		Person person = null;
		try{
			person = tq.getSingleResult();
		}
		catch (NoResultException e){
			return person;
		}
		finally{
			em.close();
		}
		
		return person;
	}*/
	

	/*public static String addGames(Set<Game> newGames, Person person){
		EntityManager em = DBUtil.getEMF().createEntityManager();
		EntityTransaction trans = em.getTransaction();
		
		System.out.print(person);
		String check = "The insertion of games was a SUCCESS";
		try{
			trans.begin();
			person.getGames().addAll(newGames);
			em.merge(person);
			trans.commit();
			return check;
		}
		catch(Exception ex){
			System.out.println(ex);
			trans.rollback();
			return check;
		}
		finally{
			em.close();
		}
	}*/
	
	public static List<Person> allPeople(){
		EntityManager em = DBUtil.getEMF().createEntityManager();
		String qs = "select p from Person p";
		TypedQuery<Person> tq = em.createQuery(qs, Person.class);
		List<Person> persons;
		
		try{
			persons = tq.getResultList();
			if (persons == null || persons.isEmpty())
			return persons;
		}
		finally{
			em.close();
		}
		return persons;
	}
	
	public static ArrayList<Person> pointsPeople(){
		EntityManager em = DBUtil.getEMF().createEntityManager();
		String qs = "select p from Person as p order by p.totPoint desc";
		TypedQuery<Person> tq = em.createQuery(qs, Person.class);
		ArrayList<Person> persons;
		
		try{
			persons = (ArrayList<Person>) tq.getResultList();
			if (persons == null || persons.isEmpty())
			return persons;
		}
		finally{
			em.close();
		}
		return persons;
	}
	
	public static ArrayList<Person> winsPeople(){
		EntityManager em = DBUtil.getEMF().createEntityManager();
		String qs = "select p from Person as p order by p.winNum desc";
		TypedQuery<Person> tq = em.createQuery(qs, Person.class);
		ArrayList<Person> persons;
		
		try{
			persons = (ArrayList<Person>) tq.getResultList();
			if (persons == null || persons.isEmpty())
			return persons;
		}
		finally{
			em.close();
		}
		return persons;
	}
	
	public static ArrayList<Person> lossPeople(){
		EntityManager em = DBUtil.getEMF().createEntityManager();
		String qs = "select p from Person as p order by p.lossNum desc";
		TypedQuery<Person> tq = em.createQuery(qs, Person.class);
		ArrayList<Person> persons;
		
		try{
			persons = (ArrayList<Person>) tq.getResultList();
			if (persons == null || persons.isEmpty())
			return persons;
		}
		finally{
			em.close();
		}
		return persons;
	}
	
	public static ArrayList<Person> namesPeople(){
		EntityManager em = DBUtil.getEMF().createEntityManager();
		String qs = "select p from Person as p order by p.username";
		TypedQuery<Person> tq = em.createQuery(qs, Person.class);
		ArrayList<Person> persons;
		
		try{
			persons = (ArrayList<Person>) tq.getResultList();
			if (persons == null || persons.isEmpty())
			return persons;
		}
		finally{
			em.close();
		}
		return persons;
	}
	
	public static void addWins(Person person, String wk){
		int weekWins = 0;
		List<Game> games = GameDB.personWeekGames(person, wk);
		for(Game g : games){
			if (g.getWins() == 1){
				weekWins++;
			}
		}
		int oldWins = person.getWinNum();
		person.setWinNum(oldWins + weekWins);
	}
	
	public static void addLosses(Person person, String wk){
		int weekLosses = 0;
		List<Game> games = GameDB.personWeekGames(person, wk);
		for(Game g : games){
			if (g.getLosses() == 1){
				weekLosses++;
			}
		}
		int oldLosses = person.getLossNum();
		person.setLossNum(oldLosses + weekLosses);
	}
	
	public static void addPoints(Person person, String wk){
		int weekPoints = 0;
		int oldPoints = person.getTotPoint();
		List<Game> games = GameDB.personWeekGames(person, wk);
		for(Game g : games){
			weekPoints += g.getPoints();
		}
		person.setTotPoint(oldPoints + weekPoints);
	}
		
	public static void updatePerson(Person person){
		EntityManager em = DBUtil.getEMF().createEntityManager();
		EntityTransaction trans = em.getTransaction();
			try{
			trans.begin();
			em.merge(person);
			trans.commit();
			}
			catch(Exception ex){
			trans.rollback();
			}
			finally{
				em.close();
			}
		}
	}
	

