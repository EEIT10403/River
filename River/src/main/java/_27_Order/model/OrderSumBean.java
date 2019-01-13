package _27_Order.model;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

public class OrderSumBean {
	private String Product_Id;
	private String Prod_Name;
	private int TotalSales;
	@Override
	public String toString() {
		return "OrderSumBean [Product_Id=" + Product_Id + ", Prod_Name=" + Prod_Name + ", TotalSales=" + TotalSales
				+ "]";
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
	public int getTotalSales() {
		return TotalSales;
	}
	public void setTotalSales(int totalSales) {
		TotalSales = totalSales;
	}


}
