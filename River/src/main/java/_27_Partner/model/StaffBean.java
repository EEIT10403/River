package _27_Partner.model;

import java.util.Arrays;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

@Entity
@Table(name="Staff")
public class StaffBean {
	@Id
	private String staff_Id;
	private byte[] password;	
	private String email;
	private String Chinese_Name;
	@Override
	public String toString() {
		return "StaffBean [staff_Id=" + staff_Id + ", password=" + Arrays.toString(password) + ", email=" + email
				+ ", Chinese_Name=" + Chinese_Name + "]";
	}
	public String getStaff_Id() {
		return staff_Id;
	}
	public void setStaff_Id(String staff_Id) {
		this.staff_Id = staff_Id;
	}
	public byte[] getPassword() {
		return password;
	}
	public void setPassword(byte[] password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getChinese_Name() {
		return Chinese_Name;
	}
	public void setChinese_Name(String chinese_Name) {
		Chinese_Name = chinese_Name;
	}
	
	
}
