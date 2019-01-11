package _27_Order.model;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "OrderItem")
public class OrderItemBean {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int SerialNum;
	private String Order_No;
	private String Product_Id;
	private String Ticket_type;
	private String Prod_Name;
	private int Quantity;
	private int UnitPrice;
	private Double Discount_Rate;
	private int Total_Amount;
	private int Unpaid_Amount;
	private int Paid_Amount;
	
	@Override
	public String toString() {
		return "OrderItemBean [SerialNum=" + SerialNum + ", Order_No=" + Order_No + ", Product_Id=" + Product_Id
				+ ", Ticket_type=" + Ticket_type + ", Prod_Name=" + Prod_Name + ", Quantity=" + Quantity
				+ ", UnitPrice=" + UnitPrice + ", Discount_Rate=" + Discount_Rate + ", Total_Amount=" + Total_Amount
				+ ", Unpaid_Amount=" + Unpaid_Amount + ", Paid_Amount=" + Paid_Amount + "]";
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

	public String getProduct_Id() {
		return Product_Id;
	}

	public void setProduct_Id(String product_Id) {
		Product_Id = product_Id;
	}

	public String getTicket_type() {
		return Ticket_type;
	}

	public void setTicket_type(String ticekt_type) {
		Ticket_type = ticekt_type;
	}

	public String getProd_Name() {
		return Prod_Name;
	}

	public void setProd_Name(String prod_Name) {
		Prod_Name = prod_Name;
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

	public Double getDiscount_Rate() {
		return Discount_Rate;
	}

	public void setDiscount_Rate(Double discount_Rate) {
		Discount_Rate = discount_Rate;
	}

	public int getTotal_Amount() {
		return Total_Amount;
	}

	public void setTotal_Amount(int total_Amount) {
		Total_Amount = total_Amount;
	}

	public int getUnpaid_Amount() {
		return Unpaid_Amount;
	}

	public void setUnpaid_Amount(int unpaid_Amount) {
		Unpaid_Amount = unpaid_Amount;
	}

	public int getPaid_Amount() {
		return Paid_Amount;
	}

	public void setPaid_Amount(int paid_Amount) {
		Paid_Amount = paid_Amount;
	}


}
