package _27_Order.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import DaytourProduct.model.DayTour_ProductBean;

@Controller
public class IntoOrderPage {

//	@InitBinder
//	public void registerPropertyEditor(WebDataBinder webDataBinder) {
//		webDataBinder.registerCustomEditor(java.util.Date.class,
//				new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd"), true));
//
//		webDataBinder.registerCustomEditor(int.class, new PrimitiveNumberEditor(java.lang.Integer.class, true));
//
//		webDataBinder.registerCustomEditor(double.class, new PrimitiveNumberEditor(java.lang.Double.class, true));
//	}
//	
	@RequestMapping("/Order/IntoOrderPage")
	public String GoToOrderPage(Model model, DayTour_ProductBean bean,String Type1_Qty,String Type2_Qty,String Type3_Qty,String Type4_Qty, HttpSession session)
			throws IOException, ServletException, SQLException {

		System.out.println("有進IntoOrderPage"+bean.getProd_Name()); // 測試有沒有進來
		System.out.println("有進IntoOrderPage"+Type1_Qty); // 測試有沒有進來
		
     

			return "product.tickettype";


	}
	
}

