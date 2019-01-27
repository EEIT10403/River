package _27_Order.model;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "OrderSell")
public class OrderSellBean {
	@Id
	private String Order_No;
	private String Member_Id;
	private String Prod_Name;
	
	
	private int Total_Amount;
	private String TravelDate;
	private String Contact_Name;
	private String Contact_Address;
	private String Contact_Phone;
	private String Contact_Email;
	private String InvoiceTitle;
	private java.util.Date OrderDate;
	private String canceltag;
	

	@Override
	public String toString() {
		return "OrderSellBean [Order_No=" + Order_No + ", Member_Id=" + Member_Id + ", Prod_Name=" + Prod_Name
				+ ", Total_Amount=" + Total_Amount + ", TravelDate=" + TravelDate + ", Contact_Name=" + Contact_Name
				+ ", Contact_Address=" + Contact_Address + ", Contact_Phone=" + Contact_Phone + ", Contact_Email="
				+ Contact_Email + ", InvoiceTitle=" + InvoiceTitle + ", OrderDate=" + OrderDate + ", canceltag="
				+ canceltag + "]";
	}

	public String getProd_Name() {
		return Prod_Name;
	}

	public void setProd_Name(String prod_Name) {
		Prod_Name = prod_Name;
	}

	public String getOrder_No() {
		return Order_No;
	}

	public void setOrder_No(String order_No) {
		Order_No = order_No;
	}

	public String getMember_Id() {
		return Member_Id;
	}

	public void setMember_Id(String member_Id) {
		Member_Id = member_Id;
	}

	public int getTotal_Amount() {
		return Total_Amount;
	}

	public void setTotal_Amount(int total_Amount) {
		Total_Amount = total_Amount;
	}

	public String getTravelDate() {
		return TravelDate;
	}

	public void setTravelDate(String travelDate) {
		TravelDate = travelDate;
	}

	public String getContact_Name() {
		return Contact_Name;
	}

	public void setContact_Name(String contact_Name) {
		Contact_Name = contact_Name;
	}

	public String getContact_Address() {
		return Contact_Address;
	}

	public void setContact_Address(String contact_Address) {
		Contact_Address = contact_Address;
	}

	public String getContact_Phone() {
		return Contact_Phone;
	}

	public void setContact_Phone(String contact_Phone) {
		Contact_Phone = contact_Phone;
	}

	public String getContact_Email() {
		return Contact_Email;
	}

	public void setContact_Email(String contact_Email) {
		Contact_Email = contact_Email;
	}

	public String getInvoiceTitle() {
		return InvoiceTitle;
	}

	public void setInvoiceTitle(String invoiceTitle) {
		InvoiceTitle = invoiceTitle;
	}

	public java.util.Date getOrderDate() {
		return OrderDate;
	}

	public void setOrderDate(java.util.Date orderDate) {
		OrderDate = orderDate;
	}

	public String getCanceltag() {
		return canceltag;
	}

	public void setCanceltag(String canceltag) {
		this.canceltag = canceltag;
	}


	
}
