package premier;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;

public class GameDB {

	public String insertGame(Game game){
		
		EntityManager em = DBUtil.getEMF().createEntityManager();
		EntityTransaction trans = em.getTransaction();
		
		String check = "The insertion of a Game was a SUCCESS";
		try{
			trans.begin();
			em.persist(game);
			trans.commit();
			return check;
		}
		catch(Exception ex){
			System.out.println(ex);
			trans.rollback();
			check = "The insertion of a Game FAILED";
			return check;
		}
		finally{
			em.close();
		}
	}
	
	
	public List<Game> weekGames(String wk){
		EntityManager em = DBUtil.getEMF().createEntityManager();
		String qs = "select g from Game g where g.week = :wk";
		TypedQuery<Game> tq = em.createQuery(qs, Game.class);
		tq.setParameter("wk", wk);
		List<Game> games;
		
		try{
			games = tq.getResultList();
			if (games == null || games.isEmpty())
			return games;
		}
		finally{
			em.close();
		}
		return games;
	}
	
	public List<Game> setWinners(List<Game> games, String win1, String win2, String win3, String win4, String win5,
									String win6, String win7, String win8, String win9, String win10){
		for(Game g : games){
			if((g.getGameNo()).equals("g1")){
				g.setWinner(win1);
			}
			else if((g.getGameNo()).equals("g2")){
				g.setWinner(win2);
			}
			else if((g.getGameNo()).equals("g3")){
				g.setWinner(win3);
			}
			else if((g.getGameNo()).equals("g4")){
				g.setWinner(win4);
			}
			else if((g.getGameNo()).equals("g5")){
				g.setWinner(win5);
			}
			else if((g.getGameNo()).equals("g6")){
				g.setWinner(win6);
			}
			else if((g.getGameNo()).equals("g7")){
				g.setWinner(win7);
			}
			else if((g.getGameNo()).equals("g8")){
				g.setWinner(win8);
			}
			else if((g.getGameNo()).equals("g9")){
				g.setWinner(win9);
			}
			else if((g.getGameNo()).equals("g10")){
				g.setWinner(win10);
			}
		}
		return games;
	}
	
	
	public void checkGames (List<Game> games){
		for(Game g : games){
			if(g.getWinner() == null || (g.getWinner()).equals("")){
				g.setWins(0);
				g.setLosses(0);
				g.setPoints(0);
				continue;
			}
			if((g.getWinner()).equals(g.getPick())){
				g.setWins(1);
				g.setPoints(g.getConPoint());
			}
			else{
				g.setLosses(1);
				g.setPoints((g.getConPoint() * (-1)));
			}
		}
	}
	
	public void updateGames(List<Game> games){
		EntityManager em = DBUtil.getEMF().createEntityManager();
		EntityTransaction trans = em.getTransaction();
		for(Game g : games){
			try{
			trans.begin();
			em.merge(g);
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
	
	public List<Game> personWeekGames(Person person, String wk){
		EntityManager em = DBUtil.getEMF().createEntityManager();
		String qs = "select g from Game g where g.week = :wk and g.person = :person";
		TypedQuery<Game> tq = em.createQuery(qs, Game.class);
		tq.setParameter("person", person);
		tq.setParameter("wk", wk);
		List<Game> games;
		
		try{
			games = tq.getResultList();
			if (games == null || games.isEmpty())
			return games;
		}
		finally{
			em.close();
		}
		return games;
	}
	
}	