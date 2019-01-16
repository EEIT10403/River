package sabre.model;



import javax.persistence.Entity;

import org.springframework.stereotype.Repository;

@Entity
@Repository
public class F_Order_PassengerBean {
	private String chname;
	private String enfirstname;
	private String enlastname;
	private String phone02;
	private String mail02;
	private String gender;
	private String birth;
	
	@Override
	public String toString() {
		return "F_Order_PassengerBean [chname=" + chname + ", enfirstname=" + enfirstname + ", enlastname=" + enlastname
				+ ", phone02=" + phone02 + ", mail02=" + mail02 + ", gender=" + gender + ", birth=" + birth + "]";
	}
	public String getChname() {
		return chname;
	}
	public void setChname(String chname) {
		this.chname = chname;
	}
	public String getEnfirstname() {
		return enfirstname;
	}
	public void setEnfirstname(String enfirstname) {
		this.enfirstname = enfirstname;
	}
	public String getEnlastname() {
		return enlastname;
	}
	public void setEnlastname(String enlastname) {
		this.enlastname = enlastname;
	}
	public String getPhone02() {
		return phone02;
	}
	public void setPhone02(String phone02) {
		this.phone02 = phone02;
	}
	public String getMail02() {
		return mail02;
	}
	public void setMail02(String mail02) {
		this.mail02 = mail02;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	
	
}
