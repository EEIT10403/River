package _21_traveling.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="travelitinerary")
public class TravelItineraryBean {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer id;
	private Integer memberid;
	private String t_name;
	private Integer touristday; 
	private java.util.Date firstday;
	private java.util.Date lastday;
	private String sequence;
	private String dailyitinerary; 
	private String ticketno;
	private String summary;
	
	
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getMemberid() {
		return memberid;
	}
	public void setMemberid(Integer memberid) {
		this.memberid = memberid;
	}
	public String getT_name() {
		return t_name;
	}
	public void setT_name(String t_name) {
		this.t_name = t_name;
	}
	public Integer getTouristday() {
		return touristday;
	}
	public void setTouristday(Integer touristday) {
		this.touristday = touristday;
	}
	public java.util.Date getFirstday() {
		return firstday;
	}
	public void setFirstday(java.util.Date firstday) {
		this.firstday = firstday;
	}
	public java.util.Date getLastday() {
		return lastday;
	}
	public void setLastday(java.util.Date lastday) {
		this.lastday = lastday;
	}
	public String getSequence() {
		return sequence;
	}
	public void setSequence(String sequence) {
		this.sequence = sequence;
	}
	public String getDailyitinerary() {
		return dailyitinerary;
	}
	public void setDailyitinerary(String dailyitinerary) {
		this.dailyitinerary = dailyitinerary;
	}
	public String getTicketno() {
		return ticketno;
	}
	public void setTicketno(String ticketno) {
		this.ticketno = ticketno;
	}
	public String getSummary() {
		return summary;
	}
	public void setSummary(String summary) {
		this.summary = summary;
	}
	@Override
	public String toString() {
		return "TravelItineraryBean [id=" + id + ", memberid=" + memberid + ", t_name=" + t_name + ", touristday="
				+ touristday + ", firstday=" + firstday + ", lastday=" + lastday + ", sequence=" + sequence
				+ ", dailyitinerary=" + dailyitinerary + ", ticketno=" + ticketno + ", summary=" + summary + "]";
	}
	
    
	

}
