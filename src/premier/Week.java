package premier;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Week implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -6263458393309928776L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;
	
	private int decGame;
	
	private int highPoint;
	
	@OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.MERGE)
	private Set<Slate> slates;
	
	public Week(){
		
	}
	
	public Week(Set<Slate> slates){
		this();
		this.slates = slates;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public int getDecGame() {
		return decGame;
	}

	public void setDecGame(int decGame) {
		this.decGame = decGame;
	}

	public int getHighPoint() {
		return highPoint;
	}

	public void setHighPoint(int highPoint) {
		this.highPoint = highPoint;
	}

	public Set<Slate> getSlates() {
		return slates;
	}

	public void setSlates(Set<Slate> slates) {
		this.slates = slates;
	}
	
	

}
