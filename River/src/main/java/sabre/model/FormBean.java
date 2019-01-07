package sabre.model;

import javax.persistence.Entity;

@Entity
public class FormBean {
	private String zt_country;
	private String zt_country02;
	private java.util.Date godate;
	private java.util.Date backdate;
	private Integer people;
	@Override
	public String toString() {
		return "FromBean [zt_country=" + zt_country + ", zt_country02=" + zt_country02 + ", godate=" + godate
				+ ", backdate=" + backdate + ", people=" + people + "]";
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

}
