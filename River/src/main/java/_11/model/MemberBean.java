package _11.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="member")
public class MemberBean {
	@Id
	private String member_Id;
	private String email;
	private String chinese_Name;
	private String english_Name;
	private String ID_number;
	private String telephone;
	private String country;
	private java.util.Date birthday;
	private String sex;
	private String address;
	
	@Override
	public String toString() {
		return "_11.model.MemberBean[" + member_Id + "," + email + "," + chinese_Name+"," 
				+ english_Name + "," + ID_number + "," + telephone + "," + country + "," + birthday + "," 
				+ sex + "," + address + "]";
	}
	public String getMember_Id() {
		return member_Id;
	}
	public void setMember_Id(String member_Id) {
		this.member_Id = member_Id;
	}
	public String getemail() {
		return email;
	}
	public void setemail(String email) {
		this.email = email;
	}
	public String getChinese_Name() {
		return chinese_Name;
	}
	public void setChinese_Name(String chinese_Name) {
		this.chinese_Name = chinese_Name;
	}
	public String getEnglish_Name() {
		return english_Name;
	}
	public void setEnglish_Name(String english_Name) {
		this.english_Name = english_Name;
	}
	public String getID_number() {
		return ID_number;
	}
	public void setID_number(String ID_Number) {
		this.ID_number = ID_Number;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public java.util.Date getBirthday(){
		return birthday;
	}
	public void setBirthday(java.util.Date birthday) {
		this.birthday = birthday;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
}
