package _27_Order.model;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Traveler_List")
public class TravelerBean {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int SerialNum;
	private String Order_No;
	private String Ticket_Type;
	private String Traveler_Name;
	private java.util.Date Birthday;
	private String Traveler_Address;
	private String Traveler_Phone;
	private String Traveler_Email;

	@Override
	public String toString() {
		return "TravelerBean [SerialNum=" + SerialNum + ", Order_No=" + Order_No + ", Features=" 
				+ ", Ticket_Type=" + Ticket_Type + ", Traveler_Name=" + Traveler_Name + ", Ticket_type_2="
				  + ", Birthday=" + Birthday + ", Traveler_Address=" + Traveler_Address
				+ ", Traveler_Phone=" + Traveler_Phone + ", Traveler_Email=" + Traveler_Email + "]";
	}

	public int getSerialNum() {
		return SerialNum;
	}

	public void setSerialNum(int serialNum) {
		SerialNum = serialNum;
	}

	public String getOrder_No() {
		return Order_No;
	}

	public void setOrder_No(String order_No) {
		Order_No = order_No;
	}


	public String getTicket_Type() {
		return Ticket_Type;
	}

	public void setTicket_Type(String ticket_Type) {
		Ticket_Type = ticket_Type;
	}

	public String getTraveler_Name() {
		return Traveler_Name;
	}

	public void setTraveler_Name(String traveler_Name) {
		Traveler_Name = traveler_Name;
	}


	public java.util.Date getBirthday() {
		return Birthday;
	}

	public void setBirthday(java.util.Date birthday) {
		Birthday = birthday;
	}

	public String getTraveler_Address() {
		return Traveler_Address;
	}

	public void setTraveler_Address(String traveler_Address) {
		Traveler_Address = traveler_Address;
	}

	public String getTraveler_Phone() {
		return Traveler_Phone;
	}

	public void setTraveler_Phone(String traveler_Phone) {
		Traveler_Phone = traveler_Phone;
	}

	public String getTraveler_Email() {
		return Traveler_Email;
	}

	public void setTraveler_Email(String traveler_Email) {
		Traveler_Email = traveler_Email;
	}

}
