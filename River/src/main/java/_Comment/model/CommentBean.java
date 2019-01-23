package _Comment.model;

import java.util.Arrays;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

@Entity
@Table(name="Comment")
public class CommentBean {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int SerialNum;
	private String Prod_Name;	
	private String Order_No;	
	private String Member_Id;
	private String Chinese_Name;
	private java.util.Date Comment_Time;
	private String Content;
	private Double Rate;
	@Override
	public String toString() {
		return "CommentBean [SerialNum=" + SerialNum + ", Prod_Name=" + Prod_Name + ", Order_No=" + Order_No
				+ ", Member_Id=" + Member_Id + ", Chinese_Name=" + Chinese_Name + ", Comment_Time=" + Comment_Time
				+ ", Content=" + Content + ", Rate=" + Rate + "]";
	}
	public int getSerialNum() {
		return SerialNum;
	}
	public void setSerialNum(int serialNum) {
		SerialNum = serialNum;
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
	public String getChinese_Name() {
		return Chinese_Name;
	}
	public void setChinese_Name(String chinese_Name) {
		Chinese_Name = chinese_Name;
	}
	public java.util.Date getComment_Time() {
		return Comment_Time;
	}
	public void setComment_Time(java.util.Date comment_Time) {
		Comment_Time = comment_Time;
	}
	public String getContent() {
		return Content;
	}
	public void setContent(String content) {
		Content = content;
	}
	public Double getRate() {
		return Rate;
	}
	public void setRate(Double rate) {
		Rate = rate;
	}
	
	
	
	
}
