package _27_Order.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import DaytourProduct.misc.PrimitiveNumberEditor;
import DaytourProduct.model.DayTour_ProductBean;

@Controller
public class IntoOrderPage {

	@InitBinder
	public void registerPropertyEditor(WebDataBinder webDataBinder) {
		webDataBinder.registerCustomEditor(java.util.Date.class,
				new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd"), true));

		webDataBinder.registerCustomEditor(int.class, new PrimitiveNumberEditor(java.lang.Integer.class, true));

		webDataBinder.registerCustomEditor(double.class, new PrimitiveNumberEditor(java.lang.Double.class, true));
	}
	
	@RequestMapping("/Order/IntoOrderPage")
	public String GoToOrderPage(Model model, DayTour_ProductBean bean,
			@RequestParam("Type1_Qty")int type1_Qty,@RequestParam("Type2_Qty")int type2_Qty,
			String Type1_Qty,String Type2_Qty,String Type3_Qty,String Type4_Qty, int Total_Amount, 
			@RequestParam("TravelDate")java.util.Date TravelDate, HttpSession session)
			throws IOException, ServletException, SQLException {
		int type3_Qty=0;
		if(Type3_Qty!=null) {
			type3_Qty= Integer.parseInt(Type3_Qty);
		}
		int type4_Qty=0;
		if(Type4_Qty!=null) {
			type4_Qty= Integer.parseInt(Type4_Qty);
		}
		
		System.out.println("有進IntoOrderPage"+bean.getProd_Name()); // 測試有沒有進來
//		System.out.println("有進type1_Qty"+type1_Qty); // 測試有沒有進來
//		System.out.println("有進Type1_Qty"+Type1_Qty); // 測試有沒有進來
//		System.out.println("有進Type3_Qty"+type3_Qty); // 測試有沒有進來
		System.out.println("有進TravelDate"+TravelDate); // 測試有沒有進來
		System.out.println("有進Total_Amount"+Total_Amount); // 測試有沒有進來
		
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
	public String InsertOrder(Model model, DayTour_ProductBean bean,
//			@RequestParam("TicketQty1")int ticketQty1,@RequestParam("TicketQty2")int ticketQty2,
			String TicketQty1,String TicketQty2,String TicketQty3,String TicketQty4, int Total_Amount, 
			@RequestParam("TravelDate")String TravelDate, String OrderDate,
			HttpSession session,HttpServletRequest request)
			throws IOException, ServletException, SQLException {
		
		int ticketQty3=0;
		if(TicketQty3!="") {
			ticketQty3= Integer.parseInt(TicketQty3);
		}
		int ticketQty4=0;
		if(TicketQty4!="") {
			ticketQty4= Integer.parseInt(TicketQty4);
		}
		
		
		System.out.println("有進InsertOrder"+bean.getProd_Name()); // 測試有沒有進來
//		System.out.println("有進type1_Qty"+type1_Qty); // 測試有沒有進來
//		System.out.println("有進Type1_Qty"+Type1_Qty); // 測試有沒有進來
//		System.out.println("有進Type3_Qty"+type3_Qty); // 測試有沒有進來
		
//		System.out.println("有進Total_Amount"+Total_Amount); // 測試有沒有進來
//		System.out.println(TicketQty1);
//		System.out.println(TicketQty2);
//		System.out.println(ticketQty3);
//		System.out.println(ticketQty4);
		System.out.println("有進TravelDate="+TravelDate); // 測試有沒有進來
		System.out.println("有進OrderDate="+OrderDate); // 測試有沒有進來
		
		Map<String, String> traveler_Name = new HashMap<>();
		
		//試著拉出所有Traveler_Name
		StringBuffer temp;
		
		for(int n=1 ; n<=4 ; n++) {
			temp = new StringBuffer("");
			temp.append("Traveler_Name"+n+"_");
			
			for(int m=1; m<=10 ; m++) {
				temp.append(m);
//				System.out.println(temp.toString());
				
				if(request.getParameter(temp.toString())!=null) {
				
				System.out.println(temp.toString()+"..."+request.getParameter(temp.toString()));
				traveler_Name.put(temp.toString(), request.getParameter(temp.toString()));
				}
				temp.replace(15,16,"");
			}
		}
		
		System.out.println(traveler_Name);
		
		Set<String> travelerSer = traveler_Name.keySet();  //拿到traveler名冊了
		System.out.println(travelerSer);  
		
		
		
		Map<String, String> ticketType = new HashMap<>();
//		model.addAttribute("ticketType", ticketType);
//        model.addAttribute("bean", bean);
//        model.addAttribute("TravelDate", TravelDate);
//        model.addAttribute("Total_Amount", Total_Amount);

			return "order.form";


	}
	
}

