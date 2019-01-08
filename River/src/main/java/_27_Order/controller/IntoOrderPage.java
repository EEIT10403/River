package _27_Order.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
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
	
}

