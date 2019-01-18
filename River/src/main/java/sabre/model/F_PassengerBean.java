package sabre.model;



import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "F_Passenger")
public class F_PassengerBean {
	private java.util.List<String> fchname;
	private java.util.List<String> fenfirstname;
	private java.util.List<String> fenlastname;
	private java.util.List<String> fgender;
	private java.util.List<String> fbirth;
	@Override
	public String toString() {
		return "F_PassengerBean [fchname=" + fchname + ", fenfirstname=" + fenfirstname + ", fenlastname=" + fenlastname
				+ ", fgender=" + fgender + ", fbirth=" + fbirth + "]";
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
