package sabre.model;



import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;

@Entity
public class F_PassengerListBean {
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int F_serialNum;
	private String Forder_No;
	private String Member_Id;
	
	private java.util.List<String> fchname;
	private java.util.List<String> fenfirstname;
	private java.util.List<String> fenlastname;
	private java.util.List<String> fgender;
	private java.util.List<String> fbirth;
	@Override
	public String toString() {
		return "F_PassengerListBean [F_serialNum=" + F_serialNum + ", Forder_No=" + Forder_No + ", Member_Id="
				+ Member_Id + ", fchname=" + fchname + ", fenfirstname=" + fenfirstname + ", fenlastname=" + fenlastname
				+ ", fgender=" + fgender + ", fbirth=" + fbirth + "]";
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
	public java.util.List<String> getFchname() {
		return fchname;
	}
	public void setFchname(java.util.List<String> fchname) {
		this.fchname = fchname;
	}
	public java.util.List<String> getFenfirstname() {
		return fenfirstname;
	}
	public void setFenfirstname(java.util.List<String> fenfirstname) {
		this.fenfirstname = fenfirstname;
	}
	public java.util.List<String> getFenlastname() {
		return fenlastname;
	}
	public void setFenlastname(java.util.List<String> fenlastname) {
		this.fenlastname = fenlastname;
	}
	public java.util.List<String> getFgender() {
		return fgender;
	}
	public void setFgender(java.util.List<String> fgender) {
		this.fgender = fgender;
	}
	public java.util.List<String> getFbirth() {
		return fbirth;
	}
	public void setFbirth(java.util.List<String> fbirth) {
		this.fbirth = fbirth;
	}
	
	
	
	
}
