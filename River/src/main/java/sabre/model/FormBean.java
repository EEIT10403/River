package sabre.model;

import javax.persistence.Entity;

import org.springframework.stereotype.Repository;

@Entity
@Repository
public class FormBean {
	private String zt_country;
	private String zt_country02;
	private java.util.Date godate;
	private java.util.Date backdate;
	private Integer people;
	private Integer people2;
	private Integer people3;
	
	@Override
	public String toString() {
		return "FormBean [zt_country=" + zt_country + ", zt_country02=" + zt_country02 + ", godate=" + godate
				+ ", backdate=" + backdate + ", people=" + people + ", people2=" + people2 + ", people3=" + people3
				+ "]";
	}
	public String getZt_country() {
		return zt_country;
	}
	public void setZt_country(String zt_country) {
		this.zt_country = zt_country;
	}
	public String getZt_country02() {
		return zt_country02;
	}
	public void setZt_country02(String zt_country02) {
		this.zt_country02 = zt_country02;
	}
	public java.util.Date getGodate() {
		return godate;
	}
	public void setGodate(java.util.Date godate) {
		this.godate = godate;
	}
	public java.util.Date getBackdate() {
		return backdate;
	}
	public void setBackdate(java.util.Date backdate) {
		this.backdate = backdate;
	}
	public Integer getPeople() {
		return people;
	}
	public void setPeople(Integer people) {
		this.people = people;
	}
	public Integer getPeople2() {
		return people2;
	}
	public void setPeople2(Integer people2) {
		this.people2 = people2;
	}
	public Integer getPeople3() {
		return people3;
	}
	public void setPeople3(Integer people3) {
		this.people3 = people3;
	}

}
