package premier;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Game implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -4055688675285905692L;

	@Id
	@GeneratedValue
	private long id;
	
	@ManyToOne
	private Slate slate;
	
	private String gameNo;
	
	private String pick;
	
	private int conPoint;
	
	private String winner;
	
	private int points;
	
	private int wins;
	
	private int losses;
	
	public Game(){
		
	}
	
	public Game(Slate slate, String gameNo, String pick, int conPoint){
		this();
		this.slate = slate;
		this.gameNo = gameNo;
		this.pick = pick;
		this.conPoint = conPoint;
	}
	
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}
	
	public Slate getSlate() {
		return slate;
	}

	public void setSlate(Slate slate) {
		this.slate = slate;
	}

	public String getWinner() {
		return winner;
	}

	public void setWinner(String winner) {
		this.winner = winner;
	}

	public int getConPoint() {
		return conPoint;
	}

	public void setConPoints(int conPoints) {
		this.conPoint = conPoints;
	}

	public String getGameNo() {
		return gameNo;
	}

	public void setGameNo(String gameNo) {
		this.gameNo = gameNo;
	}

	public String getPick() {
		return pick;
	}

	public void setPick(String pick) {
		this.pick = pick;
	}

	public int getPoints() {
		return points;
	}

	public void setPoints(int points) {
		this.points = points;
	}

	public int getWins() {
		return wins;
	}

	public void setWins(int wins) {
		this.wins = wins;
	}

	public int getLosses() {
		return losses;
	}

	public void setLosses(int losses) {
		this.losses = losses;
	}

}
