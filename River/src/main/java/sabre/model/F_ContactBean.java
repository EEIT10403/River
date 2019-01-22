package sabre.model;



import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "F_Contact")
public class F_ContactBean {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int F_serialNum;
	private String Forder_No;
	private String Member_Id;
	
	private String chnameCTT;
	private String enfirstnameCTT;
	private String enlastnameCTT;
	private String genderCTT;
	private String phoneCTT;
	private String mailCTT;
	@Override
	public String toString() {
		return "F_ContactBean [F_serialNum=" + F_serialNum + ", Forder_No=" + Forder_No + ", Member_Id=" + Member_Id
				+ ", chnameCTT=" + chnameCTT + ", enfirstnameCTT=" + enfirstnameCTT + ", enlastnameCTT=" + enlastnameCTT
				+ ", genderCTT=" + genderCTT + ", phoneCTT=" + phoneCTT + ", mailCTT=" + mailCTT + "]";
	}
	public int getF_serialNum() {
		return F_serialNum;
	}
	public void setF_serialNum(int f_serialNum) {
		F_serialNum = f_serialNum;
	}
	public String getForder_No() {
		return Forder_No;
	}
	public void setForder_No(String forder_No) {
		Forder_No = forder_No;
	}
	public String getMember_Id() {
		return Member_Id;
	}
	public void setMember_Id(String member_Id) {
		Member_Id = member_Id;
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
