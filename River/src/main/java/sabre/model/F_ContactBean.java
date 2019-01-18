package sabre.model;



import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "F_Contact")
public class F_ContactBean {
	private String chnameCTT;
	private String enfirstnameCTT;
	private String enlastnameCTT;
	private String genderCTT;
	private String phoneCTT;
	private String mailCTT;
	@Override
	public String toString() {
		return "F_ContactBean [chnameCTT=" + chnameCTT + ", enfirstnameCTT=" + enfirstnameCTT + ", enlastnameCTT="
				+ enlastnameCTT + ", genderCTT=" + genderCTT + ", phoneCTT=" + phoneCTT + ", mailCTT=" + mailCTT + "]";
	}
	public String getChnameCTT() {
		return chnameCTT;
	}
	public void setChnameCTT(String chnameCTT) {
		this.chnameCTT = chnameCTT;
	}
	public String getEnfirstnameCTT() {
		return enfirstnameCTT;
	}
	public void setEnfirstnameCTT(String enfirstnameCTT) {
		this.enfirstnameCTT = enfirstnameCTT;
	}
	public String getEnlastnameCTT() {
		return enlastnameCTT;
	}
	public void setEnlastnameCTT(String enlastnameCTT) {
		this.enlastnameCTT = enlastnameCTT;
	}
	public String getGenderCTT() {
		return genderCTT;
	}
	public void setGenderCTT(String genderCTT) {
		this.genderCTT = genderCTT;
	}
	public String getPhoneCTT() {
		return phoneCTT;
	}
	public void setPhoneCTT(String phoneCTT) {
		this.phoneCTT = phoneCTT;
	}
	public String getMailCTT() {
		return mailCTT;
	}
	public void setMailCTT(String mailCTT) {
		this.mailCTT = mailCTT;
	}
	
		
}
