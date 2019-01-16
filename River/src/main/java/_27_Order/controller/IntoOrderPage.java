package _27_Order.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import DaytourProduct.misc.PrimitiveNumberEditor;
import DaytourProduct.model.DayTour_ProductBean;
import _27_Order.model.OrderItemBean;
import _27_Order.model.OrderItemService;
import _27_Order.model.OrderSellBean;
import _27_Order.model.OrderSellService;
import _27_Order.model.TravelerBean;
import _27_Order.model.TravelerService;

@Controller
public class IntoOrderPage {

	@Autowired
	private TravelerService travelerService;

	@Autowired
	private OrderItemService orderItemService;
	
	@Autowired
	private OrderSellService orderSellService;

	@InitBinder
	public void registerPropertyEditor(WebDataBinder webDataBinder) {
		webDataBinder.registerCustomEditor(java.util.Date.class,
				new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd"), true));

		webDataBinder.registerCustomEditor(int.class, new PrimitiveNumberEditor(java.lang.Integer.class, true));

		webDataBinder.registerCustomEditor(double.class, new PrimitiveNumberEditor(java.lang.Double.class, true));
	}

	@RequestMapping("/Order/IntoOrderPage")
	public String GoToOrderPage(Model model, DayTour_ProductBean bean, @RequestParam("Type1_Qty") int type1_Qty,
			@RequestParam("Type2_Qty") int type2_Qty, String Type1_Qty, String Type2_Qty, String Type3_Qty,
			String Type4_Qty, int Total_Amount, @RequestParam("TravelDate") java.util.Date TravelDate,
			HttpSession session) throws IOException, ServletException, SQLException {
		int type3_Qty = 0;
		if (Type3_Qty != null) {
			type3_Qty = Integer.parseInt(Type3_Qty);
		}
		int type4_Qty = 0;
		if (Type4_Qty != null) {
			type4_Qty = Integer.parseInt(Type4_Qty);
		}

		System.out.println("有進IntoOrderPage" + bean.getProd_Name()); // 測試有沒有進來
//		System.out.println("有進type1_Qty"+type1_Qty); // 測試有沒有進來
//		System.out.println("有進Type1_Qty"+Type1_Qty); // 測試有沒有進來
//		System.out.println("有進Type3_Qty"+type3_Qty); // 測試有沒有進來
		System.out.println("有進TravelDate" + TravelDate); // 測試有沒有進來
		System.out.println("有進Total_Amount" + Total_Amount); // 測試有沒有進來

		Map<String, String> ticketType = new HashMap<>();
		ticketType.put("Type1_Qty", Type1_Qty);
		ticketType.put("Type2_Qty", Type2_Qty);
		ticketType.put("Type3_Qty", Type3_Qty);
		ticketType.put("Type4_Qty", Type4_Qty);

		model.addAttribute("ticketType", ticketType);
		model.addAttribute("bean", bean);
		model.addAttribute("TravelDate", TravelDate);
		model.addAttribute("Total_Amount", Total_Amount);

		return "order.form";

	}

	@RequestMapping("/Order/InsertOrder")
	public String InsertOrder(Model model, DayTour_ProductBean bean, @RequestParam("TicketQty1") int ticketQty1,
			@RequestParam("TicketQty2") int ticketQty2, String TicketQty1, String TicketQty2, String TicketQty3,
			String TicketQty4, int Total_Amount, @RequestParam("TravelDate") String TravelDate, HttpSession session,
			String Contact_Name,String Contact_Address,String Contact_Phone,String Contact_Email,String InvoiceTitle,
			HttpServletRequest request) throws IOException, ServletException, SQLException {

		String member_Id = (String) session.getAttribute("member_Id");  
		
		System.out.println("Contact_Name="+Contact_Name);
		
		int ticketQty3 = 0;
		if (TicketQty3 != "") {
			ticketQty3 = Integer.parseInt(TicketQty3);
		}
		int ticketQty4 = 0;
		if (TicketQty4 != "") {
			ticketQty4 = Integer.parseInt(TicketQty4);
		}

		String Ticket_type_1 = bean.getTicket_type_1();
		String Ticket_type_2 = bean.getTicket_type_2();
		String Ticket_type_3 = bean.getTicket_type_3();
		String Ticket_type_4 = bean.getTicket_type_4();

		// 準備好要用的時間
		SimpleDateFormat formatter1 = new SimpleDateFormat("yyyyMMddHHmmss"); // 生成訂單號碼用
		String OrderDate1 = formatter1.format(new java.util.Date());
		System.out.println("現在時間=" + OrderDate1);

		SimpleDateFormat formatter2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); // 插入資料庫的OrderDate用
		String OrderDate2 = formatter2.format(new java.util.Date());
		System.out.println("現在時間=" + OrderDate2);

		SimpleDateFormat formatter3 = new SimpleDateFormat("yyyy-MM-dd"); // 插入資料庫的Birthday用
//		

		String OrderNo = bean.getCountry() + bean.getProduct_Id() + OrderDate1; // 生成訂單號碼
		System.out.println("訂單號碼=" + OrderNo);

		System.out.println("有進InsertOrder" + bean.getProd_Name()); // 測試有沒有進來
//		System.out.println("有進type1_Qty"+type1_Qty); // 測試有沒有進來
//		System.out.println("有進Type1_Qty"+Type1_Qty); // 測試有沒有進來
//		System.out.println("有進Type3_Qty"+type3_Qty); // 測試有沒有進來

//		System.out.println("有進Total_Amount"+Total_Amount); // 測試有沒有進來
//		System.out.println(TicketQty1);
//		System.out.println(TicketQty2);
//		System.out.println(ticketQty3);
//		System.out.println(ticketQty4);
		System.out.println("有進TravelDate的String=" + TravelDate); // 測試有沒有進來

//進
		Map<String, String> traveler_Name = new HashMap<>();

//insert Traveler Table 區塊 start

		// 試著拉出所有Traveler_Name
		StringBuffer temp;

		for (int n = 1; n <= 4; n++) {
			temp = new StringBuffer("");
			temp.append("Traveler_Name" + n + "_");

			for (int m = 1; m <= 10; m++) {
				temp.append(m);
//				System.out.println(temp.toString());

				if (request.getParameter(temp.toString()) != null) {

//					System.out.println(temp.toString() + "..." + request.getParameter(temp.toString()));
					traveler_Name.put(temp.toString(), request.getParameter(temp.toString()));
				}
				temp.replace(15, 16, "");
			}
		}
		// 試著拉出所有Traveler的birthday
		Map<String, String> birthday = new HashMap<>();

		for (int n = 1; n <= 4; n++) {
			temp = new StringBuffer("");
			temp.append("birthday" + n + "_");

			for (int m = 1; m <= 10; m++) {
				temp.append(m);
//				System.out.println(temp.toString());

				if (request.getParameter(temp.toString()) != null) {

//					System.out.println(temp.toString() + "..." + request.getParameter(temp.toString()));
					birthday.put(temp.toString(), request.getParameter(temp.toString()));
				}
				temp.replace(10, 11, "");
			}
		}

		System.out.println(traveler_Name);
		System.out.println(birthday);

//		Set<String> travelerSer = traveler_Name.keySet();  //拿到traveler名冊了
//		System.out.println(travelerSer);  

		// 進Traveler Table的前置動作
		String temp2;
		String temp3;
		String Ticket_Type;
		String Traveler_Name;
		String Birthday;

		for (Entry<String, String> aTraveler : traveler_Name.entrySet()) {
//		    System.out.println(entry.getKey()+"==="+entry.getValue());
			temp2 = aTraveler.getKey(); // ex.拿到Traveler2_1

			Ticket_Type = temp2.substring(13, 14); // 拉出1 , 找到票券名
			temp3 = temp2.substring(13, 16); // 拉出1 , 找到票券名
			switch (Ticket_Type) {
			case "1":
				Ticket_Type = Ticket_type_1;
				break;
			case "2":
				Ticket_Type = Ticket_type_2;
				break;
			case "3":
				Ticket_Type = Ticket_type_3;
				break;
			case "4":
				Ticket_Type = Ticket_type_4;
			}
//			System.out.println(Ticket_Type);
			Traveler_Name = aTraveler.getValue(); // 拿到黃曉明
//			System.out.println(Traveler_Name);
			Birthday = birthday.getOrDefault("birthday" + temp3, "null");
//			System.out.println(Birthday);

			TravelerBean travelerBean = new TravelerBean();

			travelerBean.setOrder_No(OrderNo);
			try {
				travelerBean.setBirthday(formatter3.parse(Birthday));
			} catch (ParseException e) {
				travelerBean.setBirthday(null);
			}
			travelerBean.setTicket_Type(Ticket_Type);
			travelerBean.setTraveler_Name(Traveler_Name);
			travelerService.insert(travelerBean);

		}

//insert Traveler Table 區塊 end

//insert OrderItem  區塊 start

		if (ticketQty1 > 0) {
			OrderItemBean orderItemBean = new OrderItemBean();
			orderItemBean.setOrder_No(OrderNo);
			orderItemBean.setProduct_Id(bean.getProduct_Id());
			orderItemBean.setTicket_type(Ticket_type_1);
			orderItemBean.setProd_Name(bean.getProd_Name());
			orderItemBean.setQuantity(ticketQty1);
			orderItemBean.setUnitPrice(bean.getUnitPrice_1());

			orderItemBean.setTotal_Amount(bean.getUnitPrice_1() * ticketQty1);
			orderItemBean.setUnpaid_Amount(bean.getUnitPrice_1() * ticketQty1);
			orderItemBean.setPaid_Amount(0);

			orderItemService.insert(orderItemBean);
		}
		if (ticketQty2 > 0) {
			OrderItemBean orderItemBean = new OrderItemBean();
			orderItemBean.setOrder_No(OrderNo);
			orderItemBean.setProduct_Id(bean.getProduct_Id());
			orderItemBean.setTicket_type(Ticket_type_2);
			orderItemBean.setProd_Name(bean.getProd_Name());
			orderItemBean.setQuantity(ticketQty2);
			orderItemBean.setUnitPrice(bean.getUnitPrice_2());

			orderItemBean.setTotal_Amount(bean.getUnitPrice_2() * ticketQty2);
			orderItemBean.setUnpaid_Amount(bean.getUnitPrice_2() * ticketQty2);
			orderItemBean.setPaid_Amount(0);

			orderItemService.insert(orderItemBean);
		}
		if (ticketQty3 > 0) {
			OrderItemBean orderItemBean = new OrderItemBean();
			orderItemBean.setOrder_No(OrderNo);
			orderItemBean.setProduct_Id(bean.getProduct_Id());
			orderItemBean.setTicket_type(Ticket_type_3);
			orderItemBean.setProd_Name(bean.getProd_Name());
			orderItemBean.setQuantity(ticketQty3);
			orderItemBean.setUnitPrice(bean.getUnitPrice_3());

			orderItemBean.setTotal_Amount(bean.getUnitPrice_3() * ticketQty3);
			orderItemBean.setUnpaid_Amount(bean.getUnitPrice_3() * ticketQty3);
			orderItemBean.setPaid_Amount(0);

			orderItemService.insert(orderItemBean);
		}
		if (ticketQty4 > 0) {
			OrderItemBean orderItemBean = new OrderItemBean();
			orderItemBean.setOrder_No(OrderNo);
			orderItemBean.setProduct_Id(bean.getProduct_Id());
			orderItemBean.setTicket_type(Ticket_type_4);
			orderItemBean.setProd_Name(bean.getProd_Name());
			orderItemBean.setQuantity(ticketQty4);
			orderItemBean.setUnitPrice(bean.getUnitPrice_4());

			orderItemBean.setTotal_Amount(bean.getUnitPrice_4() * ticketQty4);
			orderItemBean.setUnpaid_Amount(bean.getUnitPrice_4() * ticketQty4);
			orderItemBean.setPaid_Amount(0);

			orderItemService.insert(orderItemBean);
		}

//insert OrderItem  區塊 end
		
//insert OrderSell  區塊 start
		
		OrderSellBean orderSellBean = new OrderSellBean();
		
		orderSellBean.setOrder_No(OrderNo);
		orderSellBean.setMember_Id(member_Id); //等到member功能完整一點, 應該能從session拿到吧
		orderSellBean.setProd_Name(bean.getProd_Name());
		orderSellBean.setTotal_Amount(Total_Amount);
		orderSellBean.setTravelDate(TravelDate);
		orderSellBean.setContact_Name(Contact_Name);
		orderSellBean.setContact_Address(Contact_Address);
		orderSellBean.setContact_Email(Contact_Email);
		orderSellBean.setContact_Phone(Contact_Phone);
		orderSellBean.setInvoiceTitle(InvoiceTitle);
		try {
			orderSellBean.setOrderDate(formatter2.parse(OrderDate2));
		} catch (ParseException e) {
			orderSellBean.setOrderDate(null);
			System.out.println("setOrderDate沒成功");
		}
		
		orderSellService.insert(orderSellBean);
		
//insert OrderSell  區塊 end
		
		
		
		model.addAttribute("member_Id", member_Id); 
		
		List<OrderSellBean> Orderlist = orderSellService.findOrdersByMemberId(member_Id); //寫死母湯
//		System.out.println("後端"+Orderlist);
		
		model.addAttribute("orderList", Orderlist);

		return "MemberOrders.list";
	}

}
