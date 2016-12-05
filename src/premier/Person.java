package premier;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Person implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 6345678942508421005L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;
	
	private String username;
	
	private String password;
	
	@OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.MERGE, mappedBy="person")
	private Set<Slate> slates;
	
	private int winNum;
	
	private int lossNum;
	
	private int totPoint;
	
	public Person(){
		
	}
	
	public Person(String username){
		this();
		this.username = username;
	}

	public Person(String username, String password){
		this();
		this.username = username;
		this.password = password;
	}
	
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Set<Slate> getSlates() {
		return slates;
	}

	public void setSlates(Set<Slate> slates) {
		this.slates = slates;
	} 
	
	public void addSlate(Slate newSlate){
		this.slates.add(newSlate);
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

	public int getTotPoint() {
		return totPoint;
	}

	public void setTotPoint(int totPoint) {
		this.totPoint = totPoint;
	}

	@Override
	public String toString() {
		return "Person [id=" + id + ", username=" + username + ", password=" + password + ", slates=" + slates
				+ ", winNum=" + winNum + ", lossNum=" + lossNum + ", totPoint=" + totPoint + "]";
	}
	
}
