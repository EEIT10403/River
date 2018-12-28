package ShoppingCart.model;

import java.sql.Blob;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="ShoppingCart")
public class ShoppingCartBean {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int SerialNum;
	private String Member_Id;
	private String Product_Id;
	private String Prod_Name;
	private String Ticekt_type;
	private int Quantity;
	private int UnitPrice;
	private double Discount_Rate;
	@Override
	public String toString() {
		return "ShoppingCartBean [SerialNum=" + SerialNum + ", Member_Id=" + Member_Id + ", Product_Id=" + Product_Id
				+ ", Prod_Name=" + Prod_Name + ", Ticekt_type=" + Ticekt_type  
				+ ", Quantity=" + Quantity + ", UnitPrice=" + UnitPrice + ", Discount_Rate=" + Discount_Rate
				+ ", Total_Amount=" + Total_Amount + "]";
	}
	private int Total_Amount;
	
	
	public int getSerialNum() {
		return SerialNum;
	}
	public void setSerialNum(int serialNum) {
		SerialNum = serialNum;
	}
	public String getMember_Id() {
		return Member_Id;
	}
	public void setMember_Id(String member_Id) {
		Member_Id = member_Id;
	}
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
	public String getTicekt_type() {
		return Ticekt_type;
	}
	public void setTicekt_type(String ticekt_type) {
		Ticekt_type = ticekt_type;
	}
	public int getQuantity() {
		return Quantity;
	}
	public void setQuantity(int quantity) {
		Quantity = quantity;
	}
	public int getUnitPrice() {
		return UnitPrice;
	}
	public void setUnitPrice(int unitPrice) {
		UnitPrice = unitPrice;
	}
	public double getDiscount_Rate() {
		return Discount_Rate;
	}
	public void setDiscount_Rate(double discount_Rate) {
		Discount_Rate = discount_Rate;
	}
	public int getTotal_Amount() {
		return Total_Amount;
	}
	public void setTotal_Amount(int total_Amount) {
		Total_Amount = total_Amount;
	}
	


}
