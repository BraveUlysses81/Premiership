package premier;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class Slate implements Serializable{

	
	/**
	 * 
	 */
	private static final long serialVersionUID = 8113261215807458141L;

	@Id
	@GeneratedValue
	private long id;
	
	@ManyToOne
	private Person person;
	
	@ManyToOne
	private Week week;
	
	@OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.MERGE, mappedBy="slate")
	private Set<Game> games;
	
	private int gPoint;
	
	private int winNum;
	
	private int lossNum;
	
	private int bonus;
	
	private int clean;
	
	private int totPoint;
	
	public Slate(){
		
	}
	
	public Slate(Person person, Week week, Set<Game> games){
		this();
		this.person = person;
		this.week = week;
		this.games = games;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public Person getPerson() {
		return person;
	}

	public void setPerson(Person person) {
		this.person = person;
	}

	public Week getWeek() {
		return week;
	}

	public void setWeek(Week week) {
		this.week = week;
	}

	public Set<Game> getGames() {
		return games;
	}

	public void setGames(Set<Game> games) {
		this.games = games;
	}

	public int getgPoint() {
		return gPoint;
	}

	public void setgPoint(int gPoint) {
		this.gPoint = gPoint;
	}

	public int getWinNum() {
		return winNum;
	}

	public void setWinNum(int winNum) {
		this.winNum = winNum;
	}

	public int getLossNum() {
		return lossNum;
	}

	public void setLossNum(int lossNum) {
		this.lossNum = lossNum;
	}

	public int getBonus() {
		return bonus;
	}

	public void setBonus(int bonus) {
		this.bonus = bonus;
	}

	public int getClean() {
		return clean;
	}

	public void setClean(int clean) {
		this.clean = clean;
	}

	public int getTotPoint() {
		return totPoint;
	}

	public void setTotPoint(int totPoint) {
		this.totPoint = totPoint;
	}
	
	
	
	
}
