package sabre.model;

import javax.persistence.Entity;

import org.springframework.stereotype.Repository;

@Entity
@Repository
public class F_OrderBean {
	private String F_start;
	private String F_startend;
	private String F_endback;
	private String F_end;
	
	private String Cn_start;
	private String Cn_startend;
	private String Cn_endback;
	private String Cn_end;

	private java.util.Date F_goDateStart;
	private java.util.Date F_goDateEnd;
	private java.util.Date F_backDateStart;
	private java.util.Date F_backDateEnd;
	
	private String F_toatalTimeGo;
	private String F_toatalTimeEnd;
	private String AirLine_go;
	private String AirLine_back;
	private String Flight_numbergo;
	private String Flight_numberback;
	private String F_cabin;
	
	private Integer F_adult;
	private Integer F_child;
	private Integer F_baby;
	private String Booking_code;
	private String Order_code;
	
	private String F_tax;
	private String F_price;
	private String F_total;
		
	@Override
	public String toString() {
		return "F_OrderBean [F_start=" + F_start + ", F_startend=" + F_startend + ", F_endback=" + F_endback
				+ ", F_end=" + F_end + ", Cn_start=" + Cn_start + ", Cn_startend=" + Cn_startend + ", Cn_endback="
				+ Cn_endback + ", Cn_end=" + Cn_end + ", F_goDateStart=" + F_goDateStart + ", F_goDateEnd="
				+ F_goDateEnd + ", F_backDateStart=" + F_backDateStart + ", F_backDateEnd=" + F_backDateEnd
				+ ", F_toatalTimeGo=" + F_toatalTimeGo + ", F_toatalTimeEnd=" + F_toatalTimeEnd + ", AirLine_go="
				+ AirLine_go + ", AirLine_back=" + AirLine_back + ", Flight_numbergo=" + Flight_numbergo
				+ ", Flight_numberback=" + Flight_numberback + ", F_cabin=" + F_cabin + ", F_adult=" + F_adult
				+ ", F_child=" + F_child + ", F_baby=" + F_baby + ", Booking_code=" + Booking_code + ", Order_code="
				+ Order_code + ", F_tax=" + F_tax + ", F_price=" + F_price + ", F_total=" + F_total + "]";
	}
	
	public String getF_start() {
		return F_start;
	}
	public void setF_start(String f_start) {
		F_start = f_start;
	}
	public String getF_startend() {
		return F_startend;
	}
	public void setF_startend(String f_startend) {
		F_startend = f_startend;
	}
	public String getF_endback() {
		return F_endback;
	}
	public void setF_endback(String f_endback) {
		F_endback = f_endback;
	}
	public String getF_end() {
		return F_end;
	}
	public void setF_end(String f_end) {
		F_end = f_end;
	}
	public String getCn_start() {
		return Cn_start;
	}

	public void setCn_start(String cn_start) {
		Cn_start = cn_start;
	}

	public String getCn_startend() {
		return Cn_startend;
	}

	public void setCn_startend(String cn_startend) {
		Cn_startend = cn_startend;
	}

	public String getCn_endback() {
		return Cn_endback;
	}

	public void setCn_endback(String cn_endback) {
		Cn_endback = cn_endback;
	}

	public String getCn_end() {
		return Cn_end;
	}

	public void setCn_end(String cn_end) {
		Cn_end = cn_end;
	}

	public java.util.Date getF_goDateStart() {
		return F_goDateStart;
	}
	public void setF_goDateStart(java.util.Date f_goDateStart) {
		F_goDateStart = f_goDateStart;
	}
	public java.util.Date getF_goDateEnd() {
		return F_goDateEnd;
	}
	public void setF_goDateEnd(java.util.Date f_goDateEnd) {
		F_goDateEnd = f_goDateEnd;
	}
	public java.util.Date getF_backDateStart() {
		return F_backDateStart;
	}
	public void setF_backDateStart(java.util.Date f_backDateStart) {
		F_backDateStart = f_backDateStart;
	}
	public java.util.Date getF_backDateEnd() {
		return F_backDateEnd;
	}
	public void setF_backDateEnd(java.util.Date f_backDateEnd) {
		F_backDateEnd = f_backDateEnd;
	}
	public String getF_toatalTimeGo() {
		return F_toatalTimeGo;
	}
	public void setF_toatalTimeGo(String f_toatalTimeGo) {
		F_toatalTimeGo = f_toatalTimeGo;
	}
	public String getF_toatalTimeEnd() {
		return F_toatalTimeEnd;
	}
	public void setF_toatalTimeEnd(String f_toatalTimeEnd) {
		F_toatalTimeEnd = f_toatalTimeEnd;
	}
	public String getAirLine_go() {
		return AirLine_go;
	}
	public void setAirLine_go(String airLine_go) {
		AirLine_go = airLine_go;
	}
	public String getAirLine_back() {
		return AirLine_back;
	}
	public void setAirLine_back(String airLine_back) {
		AirLine_back = airLine_back;
	}
	public String getFlight_numbergo() {
		return Flight_numbergo;
	}
	public void setFlight_numbergo(String flight_numbergo) {
		Flight_numbergo = flight_numbergo;
	}
	public String getFlight_numberback() {
		return Flight_numberback;
	}
	public void setFlight_numberback(String flight_numberback) {
		Flight_numberback = flight_numberback;
	}
	public String getF_cabin() {
		return F_cabin;
	}
	public void setF_cabin(String f_cabin) {
		F_cabin = f_cabin;
	}
	public Integer getF_adult() {
		return F_adult;
	}
	public void setF_adult(Integer f_adult) {
		F_adult = f_adult;
	}
	public Integer getF_child() {
		return F_child;
	}
	public void setF_child(Integer f_child) {
		F_child = f_child;
	}
	public Integer getF_baby() {
		return F_baby;
	}
	public void setF_baby(Integer f_baby) {
		F_baby = f_baby;
	}
	public String getBooking_code() {
		return Booking_code;
	}
	public void setBooking_code(String booking_code) {
		Booking_code = booking_code;
	}
	public String getOrder_code() {
		return Order_code;
	}

	public void setOrder_code(String order_code) {
		Order_code = order_code;
	}

	public String getF_tax() {
		return F_tax;
	}
	public void setF_tax(String f_tax) {
		F_tax = f_tax;
	}
	public String getF_price() {
		return F_price;
	}
	public void setF_price(String f_price) {
		F_price = f_price;
	}
	public String getF_total() {
		return F_total;
	}
	public void setF_total(String f_total) {
		F_total = f_total;
	}
		
	
	
	
	
}
