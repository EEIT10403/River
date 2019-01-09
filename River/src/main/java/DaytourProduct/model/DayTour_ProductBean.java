package DaytourProduct.model;

import java.sql.Blob;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="DayTour_Product")
public class DayTour_ProductBean {
	@Id
	private String Product_Id;
	private String Prod_Name;
	private String Features;
	private String Ticket_type_1;
	private int UnitPrice_1;
	private String Ticket_type_2;
	private int UnitPrice_2;
	private String Ticket_type_3;
	private int UnitPrice_3;
	private String Ticket_type_4;
	private int UnitPrice_4;
	private double Discount_Rate;
	private double Acceptable_Discount_Rate;
	private Blob Main_Image;
	private String Region;
	private String Country;
	private String Detail;
	private String Rights;
	public String getProduct_Id() {
		return Product_Id;
	}
	public void setProduct_Id(String product_Id) {
		Product_Id = product_Id;
	}
	public String getProd_Name() {
		return Prod_Name;
	}
	public void setProd_Name(String prod_Name) {
		Prod_Name = prod_Name;
	}
	public String getFeatures() {
		return Features;
	}
	public void setFeatures(String features) {
		Features = features;
	}
	public int getUnitPrice_1() {
		return UnitPrice_1;
	}
	public void setUnitPrice_1(int unitPrice_1) {
		UnitPrice_1 = unitPrice_1;
	}
	public int getUnitPrice_2() {
		return UnitPrice_2;
	}
	public void setUnitPrice_2(int unitPrice_2) {
		UnitPrice_2 = unitPrice_2;
	}
	public int getUnitPrice_3() {
		return UnitPrice_3;
	}
	public void setUnitPrice_3(int unitPrice_3) {
		UnitPrice_3 = unitPrice_3;
	}
	public int getUnitPrice_4() {
		return UnitPrice_4;
	}
	public void setUnitPrice_4(int unitPrice_4) {
		UnitPrice_4 = unitPrice_4;
	}
	public String getTicket_type_1() {
		return Ticket_type_1;
	}
	public void setTicket_type_1(String ticket_type_1) {
		Ticket_type_1 = ticket_type_1;
	}
	public String getTicket_type_2() {
		return Ticket_type_2;
	}
	public void setTicket_type_2(String ticket_type_2) {
		Ticket_type_2 = ticket_type_2;
	}
	public String getTicket_type_3() {
		return Ticket_type_3;
	}
	public void setTicket_type_3(String ticket_type_3) {
		Ticket_type_3 = ticket_type_3;
	}
	public String getTicket_type_4() {
		return Ticket_type_4;
	}
	public void setTicket_type_4(String ticket_type_4) {
		Ticket_type_4 = ticket_type_4;
	}
	public double getDiscount_Rate() {
		return Discount_Rate;
	}
	public void setDiscount_Rate(double discount_Rate) {
		Discount_Rate = discount_Rate;
	}
	public double getAcceptable_Discount_Rate() {
		return Acceptable_Discount_Rate;
	}
	public void setAcceptable_Discount_Rate(double acceptable_Discount_Rate) {
		Acceptable_Discount_Rate = acceptable_Discount_Rate;
	}
	public Blob getMain_Image() {
		return Main_Image;
	}
	public void setMain_Image(Blob main_Image) {
		Main_Image = main_Image;
	}
	public String getRegion() {
		return Region;
	}
	public void setRegion(String region) {
		Region = region;
	}
	public String getCountry() {
		return Country;
	}
	public void setCountry(String country) {
		Country = country;
	}
	public String getDetail() {
		return Detail;
	}
	public void setDetail(String detail) {
		Detail = detail;
	}
	public String getRights() {
		return Rights;
	}
	public void setRights(String rights) {
		Rights = rights;
	}
	@Override
	public String toString() {
		return "DayTour_ProductBean [Product_Id=" + Product_Id + ", Prod_Name=" + Prod_Name + ", Ticket_type_1="
				+ Ticket_type_1 + ", UnitPrice_1=" + UnitPrice_1 + ", Ticket_type_2=" + Ticket_type_2 + ", UnitPrice_2="
				+ UnitPrice_2 + ", Ticket_type_3=" + Ticket_type_3 + ", UnitPrice_3=" + UnitPrice_3 + ", Ticket_type_4="
				+ Ticket_type_4 + ", UnitPrice_4=" + UnitPrice_4 + ", Discount_Rate=" + Discount_Rate
				+ ", Acceptable_Discount_Rate=" + Acceptable_Discount_Rate + ", Main_Image=" + Main_Image + ", Region="
				+ Region + ", Country=" + Country + ", Detail=" + Detail + ", Rights=" + Rights + "]";
	}


}
